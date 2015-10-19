package com.zikyo.steps.dataInputExampleSteps;

import com.zikyo.common.inputData.CheckoutData;
import com.zikyo.common.inputData.LoginData;
import com.zikyo.steps.TestBase;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import org.apache.log4j.Logger;

/**
 * Created by Archpoet on 9/25/2015.
 */
public class DataInputExampleSteps extends TestBase {
    private static final Logger LOGGER = Logger.getLogger(DataInputExampleSteps.class);

    @And("^I use data pre-defined in config files as an example$")
    public void printDataFromConfig() {
        LOGGER.debug("Frontend url from config file: " + LoginData.getLoginUrl());
        LOGGER.debug("You can use the preferred implementation: config files or java classes");
    }

    @And("^I use data pre-defined in inputData classes as an example$")
    public void printDataFromClass() {
        LOGGER.debug("Checkout button name from java class: " + CheckoutData.checkoutButtonName);
        LOGGER.debug("You can use the preferred implementation: config files or java classes");
    }
}
