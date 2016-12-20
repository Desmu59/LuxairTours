Feature: Check balances on mypost

  As a mypost product owner
  I want to make sure the balances of each offer are correctly displayed
  So I know there is no regression on the display of balances

  Background:
    Given I am on the login site

  Scenario Outline: Check Scoubidou 2 balances
  When I login using valid credentials
  Then I can access all the functionalities
  And I see the balance labelled <balance_label>

  Examples:
  |balance_label|
  |MMS National |
  |SMS National ou Europe|
  |Appels National ou Europe|