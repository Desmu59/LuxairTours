Feature: Add a teaser
  As a sales manager
  I want to be able to create teasers
  So I can use teasers to render content as I wish

  Scenario Outline: A new teaser can be created from any pre-defined bundle
    Given I have content editor right
    And I am on the "Teasers" page
    When I click on the button with label "Add teaser"
    Then I can see <teaser_name>
    When I click on the link with label <teaser_name>
    Then I can see "Create of bundle"&<teaser_name>

    Examples:
    |teaser_name|
    |"Triple Topics Illustrated Small"|