Feature: Access login page

  Scenario: Access login page
    When I go to the site main page
    And I go to login page
    Then I can see Username
    And I can see Mot de passe
    When I click on the submit button of the login form