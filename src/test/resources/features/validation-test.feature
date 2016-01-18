Feature: Validation test

  Scenario: Informations
    Given I open "http://kedev2.greencloud.center/?SERVICE=SKIN_CARE"
    And I click on link with text3 "Informations"
    And I click on link with text3 "Request Appointment"
    And I wait 3 seconds
    And I type "John" into "appointment-schedule-first-name" with id
    And I type "McDonald" into "appointment-schedule-last-name" with id
    And I type "0771173993" into "appointment-schedule-phone" with id
    And I type "testare1984@gmail.com" into "appointment-schedule-email" with id
    And I click on  button with text "First Choice (Required)" with switch page
    And I click on element with text "21"
    And I click on  button with text "Click here to select an appointment time" with switch page
    And I wait 2 seconds
    And I click on element with text "6:30 PM"
    And I click on element with text "Submit"
    Then I should see an element with text "Your appointment has been requested. We will contact you shortly to confirm the exact date and time."
    And I wait 10 seconds


  Scenario: Second
   Given I open "http://kedev2.greencloud.center/?SERVICE=SKIN_CARE"
   And I click on link with text2 "Hair"
   And I click on link with text2 "Cutting&Styling"
   And I click on link with text2 "Braiding"
   And I click on link with text2 "Best Hair Color Salon"
   And I click on link with text2 "Kerastase Treatments"
   And I click on link with text2 "Keratin Treatments&Straightening"
   And I click on link with text2 "Curling&Perming"
   And I click on link with text2 "Hair extensions"
   And I click on link with text2 "Skin Care"
   And I click on link with text2 "Nail Care"
   And I click on link with text2 "Metro Mantime"
   And I click on link with text2 "Teens & Kids"
   And I click on link with text2 "Weddings and Special Events"
   And I click on link with text2 "Book an appointment online"
    And I click on  button with text "New Guest" with switch page
   And I wait 10 seconds

    Scenario: New Guest
      Given I open "http://kedev2.greencloud.center/?SERVICE=SKIN_CARE"
      And I click on link with text2 "Book an appointment online"
      And I wait 5 seconds
      And I click on  button with switch page "New Guest"
      And I type "testare1984+00@gmail.com" into "olsNewUserEmailField" with id
      And I click on  button with switch page "Continue"
      And I wait 3 seconds
      And I type "testare1984+00@gmail.com" into "registerEmailAddress" with id
      And I type "12345678" into "registerPassword1" with id
      And I type "12345678" into "registerPassword2" with id
      And I wait 3 seconds
      And I click on radio button with text "M"
      And I click on radio button with text "M"
      And I type "15/06/1987" into "birthDate" with id
      And I type "John" into "firstName" with id
      And I type "McDonald" into "lastName" with id
      And I type "Str.Merafdas nr.6" into "addressLine1" with id
      And I type "Str.Jhfdfd nr.4" into "addressLine2" with id
      And I type "fdsafads" into "registrationCity" with id
      And I type "0504545" into "postalCode" with id
      And I type "04040454545" into "daytimePhone" with id
      And I type "045054006556" into "eveningPhone" with id
      And I type "04505005045" into "cellPhone" with id
      And I type "9Y6WG6J4FJ" into "verificationCode" with id
      And I click on  button with switch page "Register"
      And I wait 20 seconds

    Scenario: line-bar
        Given I open "http://kedev2.greencloud.center/?SERVICE=SKIN_CARE"
        And I click on element with line-bar "button-nav"
        And I wait 10 seconds
        #And I click on link with text2 "Home"
        #And I click on element with line-bar "button-nav"
        #And I wait 2 seconds
        And I click on link with text2 "Team"
        And I click on element with line-bar "button-nav"
        And I wait 2 seconds
        And I click on link with text2 "Services"
        And I click on element with line-bar "button-nav"
        And I wait 2 seconds
        And I click on link with text2 "Product Line"
        And I click on element with line-bar "button-nav"
        And I wait 2 seconds
        And I click on link with text2 "Blog"
        And I click on element with line-bar "button-nav"
        And I wait 2 seconds
        And I click on link with text2 "Contact"
        And I click on element with line-bar "button-nav"


    Scenario: Sign Up
      Given I open "http://kedev2.greencloud.center/?SERVICE=SKIN_CARE"
      And I click on element with line-bar "button-nav"
      And I wait 3 seconds
      And I click on link with text2 "SIGN UP"
      And I type "John" into "joinFirstName" with id
      And I type "McDonald" into "joinLastName" with id
      And I type "Testare" into "joinUserName" with id
      And I type "12345678" into "joinPassword" with id
      And I type "testare1984@gmail.com" into "joinEmail" with id
      And I click on button with text "Sign Up"
      And I wait 10 seconds


   Scenario: LOGIN
     Given I open "http://kedev2.greencloud.center/?SERVICE=SKIN_CARE"
     And I click on element with line-bar "button-nav"
     And I wait 3 second
     And I click on link with text2 "LOGIN"
     And I type "Testare" into "userUsername" with id
     And I type "12345678" into "userPassword" with id
     And I click on button with text "Submit"
     And I wait 20 seconds
