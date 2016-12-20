Feature: Create a Single generic slide teaser
  As a sales manager / content editor
  I want to advertise 1 highly important topic or offers with this teaser

  Scenario Outline: Create a Single generic slide teaser with default contents and do not display link
    Given I have content editor right
    And I am on the teaser creation page for the teaser "<scenario_name>"
    When I enter "<scenario_name>" in the field with name "name[0][value]"

  #Set the reference node
    And I enter "<node_name>" in the field with name "field_node_source_1[0][target_id]"

  #Set the teaser deeplink text
    And I enter "Link text" in the field with name "field_teaser_deeplink_1[0][title]"

  #Save the teaser
    And I click on the button with label Save
    Then the page title is Name <scenario_name> | Luxairtours

  #Checks
    And I can see "<node_overline>"
    And I can see "<node_main_title>"
    And I can see "<node_subtitle>"
    And I can see "<node_text>"
    And the image for the related content is displayed

    And I don't see "Link text"

    Examples:
    |scenario_name                  |node_name       |node_overline|node_main_title|node_subtitle|node_text|
    |Single generic slide Scenario 1|Edu Test (12)   |             |                |            |         |
    |Single generic slide Scenario 2|Last-Minute (13)|             |                |            |         |
    |Single generic slide Scenario 3|Majorque (4)    |             |                |            |         |

  Scenario Outline: Create a Single generic slide teaser with default contents and display link

    Given I have content editor right
    And I am on the teaser creation page for the teaser "<scenario_name>"
    When I enter "<scenario_name>" in the field with name "name[0][value]"

  #Set the reference node
    And I enter "<node_name>" in the field with name "field_node_source_1[0][target_id]"

  #Enable teaser link button
    And I check the box with name "field_link_display_status_1[value]"
    And I enter "Link text" in the field with name "field_teaser_deeplink_1[0][title]"

  #Save the teaser
    And I click on the button with label Save
    Then the page title is Name <scenario_name> | Luxairtours

  #Checks
    And I can see "<node_overline>"
    And I can see "<node_main_title>"
    And I can see "<node_subtitle>"
    And I can see "<node_text>"
    And the image for the related content is displayed

    And I can see "Link text"
    When I click on the button with label "Link Text"
    Then the page title is <node_page_name>

    Examples:
      |scenario_name                  |node_name       |node_overline|node_main_title|node_subtitle|node_text|node_page_name            |
      |Single generic slide Scenario 4|Edu Test (12)   |             |                |            |         |Edu Test \| Luxairtours   |
      |Single generic slide Scenario 5|Last-Minute (13)|             |                |            |         |Last-Minute \| Luxairtours|
      |Single generic slide Scenario 6|Majorque (4)    |             |                |            |         |Majorque \| Luxairtours   |


  Scenario Outline: Create a Single generic slide teaser with overwritten contents and display link

    Given I have content editor right
    And I am on the teaser creation page for the teaser "<scenario_name>"
    When I enter "<scenario_name>" in the field with name "name[0][value]"

  #Set the reference node
    And I enter "<node_name>" in the field with name "field_node_source_1[0][target_id]"

  #Overwrite content fields
    And I upload an image in the field with label "Image"
    And I enter "Alternative text" in the field with name "field_image_1[0][alt]"
    And I enter "Overline" in the field with name "field_overline_1[0][value]"
    And I enter "Headline" in the field with name "field_headline_1[0][value]"
    And I enter "Subtitle" in the field with name "field_subtitle_1[0][value]"
    And I enter "Text" in the field with name "field_teaser_text_1[0][value]"

  #Overwrite teaser link
    And I enter "<link_value>" in the field with name "field_teaser_deeplink_1[0][uri]"
    And I enter "Link text" in the field with name "field_teaser_deeplink_1[0][title]"

  #Enable teaser link button
    And I check the box with name "field_link_display_status_1[value]"

  #Save the teaser
    And I click on the button with label Save
    Then the page title is Name <scenario_name> | Luxairtours

  #Checks
    And I can see "<node_overline>"
    And I can see "<node_main_title>"
    And I can see "<node_subtitle>"
    And I can see "<node_text>"
    And the image for the related content is displayed

    And I can see "Link text"
    When I click on the button with label "Link Text"
    Then the page title is <link_page_name>

    Examples:
      |scenario_name                   |node_name          |node_overline|node_main_title|node_subtitle|node_text|link_value          |link_page_name                                                                                        |
      |Single generic slide Scenario 7 |Edu Test (12)      |             |                |            |         |http://www.luxair.lu|Billets pas chers Luxembourg pour Milan \| Genève \| Berlin \| Vienne \| Londres \| Madrid avec Luxair|
      |Single generic slide Scenario 8 |Last-Minute (13)   |             |                |            |         |Last-Minute (13)    |Last-Munute \| Luxairtours                                                                            |
      |Single generic slide Scenario 9 |Majorque (4)       |             |                |            |         |Edu Test (12)       |Edu Test \| Luxairtours                                                                               |
      |Single generic slide Scenario 10|Berlin (7)         |             |                |            |         |Majorque (4)        |Majorque \| Luxairtours                                                                               |
      |Single generic slide Scenario 11|Cookies policy (11)|             |                |            |         |Page d'accueil (1)  |Page d'accueil \| Luxairtours                                                                         |