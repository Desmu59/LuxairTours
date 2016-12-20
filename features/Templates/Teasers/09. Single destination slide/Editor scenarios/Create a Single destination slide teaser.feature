Feature: Create a Single destination slide teaser
  As a sales manager / content editor
  I want to advertise 1 highly important topic or offers with this teaser

  Scenario: Create a Single destination slide teaser with default contents and links

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Single destination slide"
    When I enter "Single destination slide Scenario 1" in the field with name "name[0][value]"

  #Configure the offers
    #Configure IBE query
    And I click on the button with label "Add new IBE query"
    Then I can see the field with the label "IBE BUILDER"

    When I enter "Test_Berlin_18/02-26/02_2A1C_Family" in the field with label "Name"
    And I click on the button with label "IBE BUILDER"
    And I select "Bed & Breakfast" in the field with label "Hotel Board Type"
    And I enter "2" in the field with label "Adults Count"
    And I enter "1" in the field with label "Children Count"
    And I enter "18/02/2017" in the field with label "Date from"
    And I enter "26/02/2017" in the field with label "Date to"
    And I enter "7" in the field with label "Duration"
    And I enter "1000" in the field with label "Tree identifier"
    And I enter "301" in the field with label "Group identifier"
    And I click on the button with label "Create ibe query"
    Then I can see "Test_Berlin_18/02-26/02_2A1C_Family"

  #Save the teaser
    And I click on the button with label Save
    Then the page title is Name Single destination slide Scenario 1 | Luxairtours

  #Checks
    And I can see Berlin, Deutschland
    And I can see Berlin Mark Hôtel
    And I can see 7 jours, 2 adultes, 1 enfant, petit-déjeuner
    And I can see "4 stars"
    And I can see a button with label apd 219€
    And the image for the related content is displayed
    When I click on the button with label "apd 219€"
    Then the page title is Luxair Tours IBE

  Scenario Outline: Create a Single destination slide teaser with default contents and overwritten links

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Single destination slide"
    When I enter "<scenario_name>" in the field with name "name[0][value]"

  #Configure the offers
    #Configure IBE query
    And I click on the button with label "Add new IBE query"
    Then I can see the field with the label "IBE BUILDER"

    When I enter "Test_Berlin_18/02-26/02_2A1C_Family" in the field with label "Name"
    And I click on the button with label "IBE BUILDER"
    And I select "Bed & Breakfast" in the field with label "Hotel Board Type"
    And I enter "2" in the field with label "Adults Count"
    And I enter "1" in the field with label "Children Count"
    And I enter "18/02/2017" in the field with label "Date from"
    And I enter "26/02/2017" in the field with label "Date to"
    And I enter "7" in the field with label "Duration"
    And I enter "1000" in the field with label "Tree identifier"
    And I enter "301" in the field with label "Group identifier"
    And I click on the button with label "Create ibe query"
    Then I can see "Test_Berlin_18/02-26/02_2A1C_Family"

    #Overwrite contents
    When I upload an image in the field with label "Image"
    And I enter "Alternative text" in the field with name "field_image_1[0][alt]"
    And I enter "Destination" in the field with name "field_subtitle_1[0][value]"
    And I enter "Pack combination" in the field with name "field_teaser_text_1[0][value]"
    And I enter "<link_value>" in the field with name "field_teaser_deeplink_1[0][uri]"

  #Save the teaser
    And I click on the button with label Save
    Then the page title is Name <scenario_name> | Luxairtours

  #Checks
    And I can see "Destination"
    And I can see "Berlin Mark Hôtel"
    And I can see "Pack combination"
    And I can see "4 stars"
    And I can see a button with label apd 219€
    And the image for the related content is displayed
    When I click on the button with label "apd 219€"
    Then the page title is <link_page_name>

    Examples:
    |scenario_name|link_value|link_page_name|
    |Single destination slide Scenario 2|http://www.luxair.lu|Billets pas chers Luxembourg pour Milan \| Genève \| Berlin \| Vienne \| Londres \| Madrid avec Luxair|
    |Single destination slide Scenario 3|Last-Minute (13)    |Last-Munute \| Luxairtours                         |
    |Single destination slide Scenario 4|Edu Test (12)       |Edu Test \| Luxairtours                            |
    |Single destination slide Scenario 5|Majorque (4)        |Majorque \| Luxairtours                            |
    |Single destination slide Scenario 6|Page d'accueil (1)  |Page d'accueil \| Luxairtours                      |