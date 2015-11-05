Feature: Validation test

  Scenario: Nowpensions
   Given I open "http://staging.nowpensions.com/"
   #And I click on link with text "Login"
   And I click on link with text2 "Adviser"
   And I wait 2 seconds
   And I click on link with text3 "Login"
    And I wait 2 seconds
    And I type "testare1984+9999@gmail.com" into2 "Email" field
    And I type "12345678" into2 "Password" field
   And I click on  button2 with text "Login"
   And I wait 2 seconds
   And I click on link with text3 "Start a new application"
   And I click on link with text3 "Continue"
   And I click on element with text "Yes"
   And I click on label "My bureau is not shown"
   And I click on input button with text "Continue"
   And I click on button with text "Choose plan"
   And I wait 2 seconds
   And I type "asaasa" into "Employer name (legal)" field with input type
   And I click on element with text "Employer name (known as)"
    And I wait 2 seconds
    And I click on button with text "Yes"
    And I select "1st May 2016" in the drop-down list with label in separate div "What is your initial auto enrolment staging date?"
    #And I click on input button with text "No"
    And I select "Public Limited Company" in the drop-down list with label in separate div "What describes your organisation most accurately?"
    And I click on element with text "If there is no company/charity registration no. please tick this box"
    And I type "Str.Mihai Viteazu nr.40" into "Company registered address" field with input type
    And I type "Cluj-Napoca" into "City" field with input type
    And I type "0989798787" into "Postcode" field with input type
    And I select "21-30" in the drop-down list with label in separate div "How many employees do you want to include in the NOW: Pensions Plan?"
    And I type "asdafdsa" into "Primary contact name at company for queries about the Plan" field with input type
    And I type "testare1984+9999@gmail.com" into "Primary contact email address" field with input type
    And I type "testare1984+9999@gmail.com" into "Primary contact email address (confirm)" field with input type
    And I type "Boss" into "Primary contact job title" field with input type
    And I type "0986735836345683" into "Primary contact phone number" field with input type
    And I type "045/AB765" into "What is the PAYE Reference of your largest payroll? (if you only have one Payroll, please use that number)" field with input type
    And I type "Ionut" into "Main payroll contact name" field with input type
    And I type "testare1984+9999@gmail.com" into "Main payroll contact email" field with input type
    And I type "testare1984+9999@gmail.com" into "Main payroll contact email (confirm)" field with input type
    And I type "0987832434" into "Main payroll contact telephone" field with input type
    #And I type "asdfsda" into "What is the payroll commonly known as?" field with input
    And I wait 2 seconds
    And I click on element with text "Continue"
    #And I select "Fortnightly" in the drop-down list "Payroll Frequency"
   And I wait 10 seconds
   
