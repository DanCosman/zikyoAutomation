Feature: Validation test

  Scenario: Add your Primary Vehicle 2012 Audi A4
    Given I open "http://auto.savvyinsured.com/forms/"
    And I wait 1 seconds
    When I select "2000" in the drop-down list named "Vehicle Year"
    And I select "Audi" in the drop-down list named "Vehicle Make"
    And I select "A4" in the drop-down list named "Vehicle Model"
    And I click on element with text "Continue"
    And I wait 1 seconds
    And I click on "Continue" button from the section "Your Vehicles"
    And I wait 1 seconds
    And I type "john" into "Your First Name" field
    And I type "McDonald" into "Your Last Name" field
    And I type "10/10/84" into "mm/dd/yyyy" field
    And I click on element with text "Male"
    And I click on element with text "Female"
    #And I click on element with text "Back"
    #And I click on element with text "Add another vehicle"
    #And I wait 2 seconds
    #And I select "2002" in the active drop-down list "Vehicle Year"
    #And I select "BMW" in the drop-down list named "Select Make"
    #And I select "7 Series" in the drop-down list named "Vehicle Model"
    And I wait 1 seconds
    And I click on "Continue" button from the section "Drivers"


