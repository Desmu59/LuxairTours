Feature: Login to mypost.lu

  As a mypost customer
  I want to login to mypost.lu
  So I can work with the system

  Background:
    Given I am on the login site

  Scenario: Using correct credentials
    When I login using valid credentials
    Then I can access all the functionalities
    And menu is there

  Scenario Outline: Using invalid credentials
  #Scenario: Using invalid credentials
    When I login using a <user_identification> user and a <password> password
    Then I see an error message
   Examples:
     | user_identification | password  |
     | correct            | incorrect |
     | incorrect           | correct   |