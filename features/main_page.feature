Feature: Features of the main page

  As a mypost customer
  I want to have all the features available
  So I can work with the system

  Background:
    Given I´m logged in

  Scenario: Check the menu
    Then menu is there

  Scenario: Cancel Call to/in Europe
    When I select the calls to/in Europe 30 option
    And I cancel it
    Then nothing is added to my contract