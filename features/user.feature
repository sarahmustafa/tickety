Feature: user
In order to get a new user
As a user
I want to create new user to be able to use the system's functionalities.

Scenario: valid_new_user
	Given i am on the 'new user' page
	When i enter "Sarah" for "Name"
	And i enter "smustafa@qatar.cmu.edu" for "Email"
	And i enter "smustafa" for "Username"
	And i enter "12345" for "user_password"
	And i enter "12345" for "password confirmation"
	And i click button "Create"
	Then i should see "User was successfully created."
