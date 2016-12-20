Feature: Upgrade an option

  As a mypost customer
  I want to be able to upgrade an option whenever I want
  So I don't need to wait for 30 days to have more extra credit

  Background:
    Given I am on the login site

  Scenario Outline: Check I'm able to upgrade my option
    Given I'm a customer with <option_category> <option_name> option active
    When I login using valid credentials
    Then I can access all the functionalities
    When I access the option page
    Then I see the <option_category> options
    Then I can upgrade to <option_category> <target_option_name> option

  Examples:
    |option_category|option_name|target_option_name|
    |Appels Europe  |S          |M                 |
    |Internet Mobile Hors Europe|XS|S              |