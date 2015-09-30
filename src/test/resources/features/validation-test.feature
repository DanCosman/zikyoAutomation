Feature: Validation test

  Scenario: Add your Primary Vehicle 2012 Audi A4
    Given I open "http://auto.savvyinsured.com/forms/"
    And I wait 1 seconds
    When I select "2000" in the drop-down list named "Vehicle Year"
    And I select "Audi" in the drop-down list named "Vehicle Make"
    And I select "A4" in the drop-down list named "Vehicle Model"
    And I click on element with text "Continue"
    And I wait 2 seconds
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
    And I wait 2 seconds
    And I select "High School Diploma" in the drop-down list with label in separate div "Education"
    And I select "Lawyer" in the drop-down list with label in separate div "Occupation"
    And I select "Excellent" in the drop-down list with label in separate div "Credit Rating"
    And I select "31" in the drop-down list with label in separate div "Age You Got Your First US Driver's License?"
    And I wait 2 seconds
    And I select "No" in the section "Are you married?" from the "Drivers" form
    And I select "No" in the section "Is Your License Active?" from the "Drivers" form
    And I select "Yes" in the section "Do you require SR-22/SR-1P filing?" from the "Drivers" form
    And I select "Yes" in the section "Tickets or claims in the last 3 years?" from the "Drivers" form
    And I wait 2 seconds

