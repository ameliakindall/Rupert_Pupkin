Feature: Verify successful login and form validation for bad login credentials

Scenario: A user enters valid credentials and successfully logs in

Given a user on the login page
When the user enters valid credentials and successfully logs in
Then the user is redirected to their user page
