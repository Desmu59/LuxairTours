Feature: Create Product Brochure teaser
  As a sales manager / content editor
  I want to advertise 4 topics with this teaser (mainly products and brochures)

  Scenario: Teaser with global teaser fields empty and nodes using default contents but overwriting the node link

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Product Brochure teaser"
    When I enter "Product Brochure teaser Scenario 1" in the field with name "name[0][value]"

  #Configure Teasers
    #Configure Teaser 1
    #Open Teaser 1 group
    And I click on the summary with text "Teaser 1"

    #Select node
    And I enter "Edu Test (12)" in the field with name "field_node_source_1[0][target_id]"

    #Overwrite Teaser deeplink
    And I enter "http://www.luxair.lu" in the field with name "field_teaser_deeplink_1[0][uri]"

    #Close Teaser 1 group
    And I click on the summary with text "Teaser 1"

    #Configure Teaser 2
    #Open Teaser 2 group
    And I click on the summary with text "Teaser 2"

    #Select node
    And I enter "Last-Minute (13)" in the field with name "field_node_source_2[0][target_id]"

    #Overwrite Teaser deeplink
    And I enter "Edu Test (12)" in the field with name "field_teaser_deeplink_2[0][uri]"

    #Close Teaser 2 group
    And I click on the summary with text "Teaser 2"

    #Configure Teaser 3
    #Open Teaser 3 group
    And I click on the summary with text "Teaser 3"

    #Select node
    And I enter "Cookies Policy (11)" in the field with name "field_node_source_3[0][target_id]"

    #Overwrite Teaser deeplink
    And I enter "Last-Minute (13)" in the field with name "field_teaser_deeplink_3[0][uri]"

    #Close Teaser 3 group
    And I click on the summary with text "Teaser 3"

    #Configure Teaser 4
    #Open Teaser 4 group
    And I click on the summary with text "Teaser 4"

    #Select node
    And I enter "JDE (15)" in the field with name "field_node_source_4[0][target_id]"

    #Overwrite Teaser deeplink
    And I enter "Berlin (7)" in the field with name "field_teaser_deeplink_4[0][uri]"

    #Close Teaser 4 group
    And I click on the summary with text "Teaser 4"

  #Save the teaser
    And I click on the button with label Save
    Then the page title is Name Product Brochure teaser Scenario 1 | Luxairtours

  #Check the frontend
    #Check Teasers default contents
    And the text "Teaser title info 1 (DE)" is present
    And the text "Teaser text  (FR)" is present

    And the text "Offres last minute" is present
    And the text "Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute," is present

    And the text "Cookies Policy" is present
    And the text "Qu'est ce qu'un cookie ? (DE) Les cookies sont des petits fichiers texte qu'un site Web enregistre sur votre ordinateur ou appareil mobile lorsque vous visitez le site. Les cookies sont largement utilisés pour améliorer le fonctionnement du site, permettant une navigation plus rapide et plus efficace, ainsi que pour fournir des informations aux propriétaires de sites." is present

    And the text "Teaser Title JDE" is present
    And the text "Teaser Text JDE" is present

