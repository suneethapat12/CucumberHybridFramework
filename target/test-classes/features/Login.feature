Feature: Login Functionality

Scenario Outline: Login with valid credentials
Given User navigates to login page
When User enters valid email address <username> into emailfield
And User enters valid password <password> into password field
And User clicks on Login button
Then User should get successfully loggedin
Examples:
|username							|password|
|test3456@gmail.com		|welcome1|
|test2412@gmail.com		|welcome1|

Scenario: Login with invalid credentials
Given User navigates to login page
When User enters invalid email address into emailfield
And User enters invalid password "12345" into password field
And User clicks on Login button
Then User should get a proper warning message about credentials mismatch 

Scenario: Login with valid email and invalid password
Given User navigates to login page
When User enters valid email address "suneethapat12@gmail.com" into emailfield
And User enters invalid password "1234567" into password field
And User clicks on Login button
Then User should get a proper warning message about credentials mismatch 


Scenario: Login with invalid email and valid password
Given User navigates to login page
When User enters invalid email address into emailfield
And User enters valid password "12345" into password field
And User clicks on Login button
Then User should get a proper warning message about credentials mismatch 

Scenario: Login with without providing any credentials
Given User navigates to login page
When User dont enter emailaddress into email field
And User dont enter password into password field
And User clicks on Login button
Then User should get a proper warning message about credentials mismatch 



