package com.zikyo.steps;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        monochrome = true,
        plugin =  {"rerun", "html:target/cucumber","json:target/jsonReports/AdminLoginTest.json"},
        glue = {
                "src.test.java.com.zikyo"
        },
        features = {
                "src/test/resources/features/validation-test.feature"
        }
)

public class ValidationTestRunner {
}
