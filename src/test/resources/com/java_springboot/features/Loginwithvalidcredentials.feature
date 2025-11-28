
@feature_user_login
Feature: Loginwithvalidcredentials

Background: 
  Given the user is on the Login Page

@valid-login
Scenario Outline: Login with valid credentials
  When I enter "<email>"
  And I enter "<password>"
  And the user clicks the login button
  Then the home screen should load
  And the user should be navigated to the home screen
  And the Google Map is displayed correctly
  And the menu bar and recenter icon are visible

  Examples:
    | email                                                                 | password         |
    | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa | validPassword123 |

@valid-login
Scenario Outline: Login with valid credentials
  When I enter "<email>"
  And I enter "<password>"
  And the user clicks the login button
  Then the home screen should load
  And the user should be navigated to the home screen
  And the Google Map should be displayed correctly
  And the menu bar and recenter icon should be visible

  Examples:
    | email                                                                                                                                                                                                                     | password           |
    | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa | validPassword123   |
