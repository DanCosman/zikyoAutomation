package com.zikyo.common;

import com.sdl.selenium.web.Browser;
import org.apache.log4j.Logger;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class EnvConfig extends Properties {
    private static final Logger LOGGER = Logger.getLogger(EnvConfig.class);

    public EnvConfig() {
        try {
            testEnvironment = System.getProperty(ENV_PROPERTY, DEFAULT_ENV);
            browser = System.getProperty(BROWSER_PROPERTY, DEFAULT_BROWSER.getDriverKey());
            browserConfigPath = browser + ".properties";
            testConfigPath = RESOURCES_PATH + "environments/" + testEnvironment + "/test-config.properties";

            FileInputStream fileInputStream = new FileInputStream(testConfigPath);
            load(fileInputStream);
        } catch (IOException e) {
            LOGGER.error(e);
        }
    }

    public static String testEnvironment;
    public static String testConfigPath;
    public static String browser;
    public static String browserConfigPath;

    public static final String ENV_PROPERTY = "env";
    /**
     * Change the value of this field if you want to run tests in a different environment from the IDE.
     * Make sure the default value set in Jenkins is matches one of the directories in src/tests/resources/environments/
     * Use this example to set the browser from Jenkins: mvn test -Pft
     * Make sure the -P value set in Jenkins is one of the pre-defined profiles in the pom file.
     */
    public static final String DEFAULT_ENV = "ft";

    public static final String BROWSER_PROPERTY = "browser";
    /**
     * Change the value of this field if you want to run tests in a different browser from the IDE.
     * Use this example to set the browser from Jenkins: mvn test -Dbrowser="chrome"
     * Make sure the browser value set in Jenkins is one of the Browser enum values.
     */
    public static final Browser DEFAULT_BROWSER = Browser.CHROME;
    public static final String RESOURCES_PATH = "src/test/resources/";

    static EnvConfig envConfig = new EnvConfig();

    public String getProperty(String key, boolean log) {
        String property = System.getProperty(key, super.getProperty(key));
        if (log)
            LOGGER.debug("getProperty: " + key + " = " + property);
        return property;
    }

    public String getProperty(String key) {
        return getProperty(key, false);
    }


}
