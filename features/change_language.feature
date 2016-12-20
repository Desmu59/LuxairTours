Feature: Change the language of mypost.lu

  As a mypost customer
  I want to change the language of the system
  So I can work with the system

  Background:
    Given I am on the login site

  Scenario Outline: Changing the language on the login site
    When I change the language to <choosen_language>
    Then the language is changed to <target_language>

    Examples:
      | choosen_language | target_language |
#      | FR               | french          |
      | EN               | english         |
#      | DE               | german          |

#  Scenario Outline: Changing the language on the main site
#    And I login
#    When I change the language to <choosen_language>
#    Then the language is changed to <target_language>
#
#    Examples:
#      | choosen_language | target_language |
#      | FR               | french          |
#      | EN               | english         |
#      | DE               | german          |