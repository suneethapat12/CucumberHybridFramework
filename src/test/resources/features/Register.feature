Feature: Registration functionality

Scenario: User creates an account only with mandatory 
Given User navigates to Registrater Account page
When User enters the details into below fields
|firstName			|John												|
|lastName				|Berg												|
|telephone			|1234567890									|
|password				|welcome1											|
And User selects Privacy Policy
And User clicks on Continue button
Then User account should get created successfully


Scenario: User creates an account with all fields
Given User navigates to Registrater Account page
When User enters the details into below fields
|firstName	|John												|
|lastName		|Berg												|
|telephone	|1234567890									|
|password		|welcome1											|
And User selects Yes for Newsletter
And User selects Privacy Policy
And User clicks on Continue button
Then User account should get created successfully


Scenario: User creates a duplicate account
Given User navigates to Registrater Account page
When User enters the details into below fields with duplicate email
|firstName	|John												|
|lastName		|Berg												|
|email			|test2412@gmail.com		|
|telephone	|1234567890									|
|password		|welcome1											|
And User selects Yes for Newsletter
And User selects Privacy Policy
And User clicks on Continue button
Then User account should get a proper warning about duplicate email

Scenario: User creates an account without filling any details
Given User navigates to Registrater Account page
When User dont enter any details into fields
And User clicks on Continue button
Then User account should get a proper warning messages about every mandatory field

