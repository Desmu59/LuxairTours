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
    And I enter "www.luxair.lu" in the field with name "field_teaser_deeplink_1[0][uri]"

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
    And I can see "Teaser title info 1 (DE)"
    And I can see "Teaser text  (FR)"

    And I can see "Offres last minute"
    And I can see "Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute,"

    And I can see "Cookies Policy"
    And I can see "Qu'est ce qu'un cookie ? (DE) Les cookies sont des petits fichiers texte qu'un site Web enregistre sur votre ordinateur ou appareil mobile lorsque vous visitez le site. Les cookies sont largement utilisés pour améliorer le fonctionnement du site, permettant une navigation plus rapide et plus efficace, ainsi que pour fournir des informations aux propriétaires de sites."

    And I can see "Teaser Title JDE"
    And I can see "Teaser Text JDE"

    #Check overwritten links
    When I click on the teaser image 1
    Then the page title is Billets pas chers Luxembourg pour Milan | Genève | Berlin l Vienne l Londres l Madrid avec Luxair
    When I go back to the teaser page
    Then the page title is Name Product Brochure teaser Scenario 1 | Luxairtours

    When I click on the teaser image 2
    Then the page title is Edu Test | Luxairtours
    When I go back to the teaser page
    Then the page title is Name Product Brochure teaser Scenario 1 | Luxairtours

    When I click on the teaser image 3
    Then the page title is Last-Minute | Luxairtours
    When I go back to the teaser page
    Then the page title is Name Product Brochure teaser Scenario 1 | Luxairtours

    When I click on the teaser image 4
    Then the page title is JDE | Luxairtours

  Scenario: Teaser with global teaser fields with title and surtitle, using overwritten values for the 2 first nodes and default links and using default contents for the 2 other offers but using an overwritten link to an Overview node for offer 3 and the default link for offer 4

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Product Brochure teaser"
    When I enter "Product Brochure teaser Scenario 2" in the field with name "name[0][value]"

  #Configure Teaser Global fields
    And I enter "Teaser title" in the field with name "field_teaser_title[0][value]"
    And I enter "Teaser surtitle" in the field with name "field_teaser_surtitle[0][value]"

  #Configure Teasers
    #Configure Teaser 1
    #Open Teaser 1 group
    And I click on the summary with text "Teaser 1"

    #Select node
    And I enter "Last-Minute (13)" in the field with name "field_node_source_1[0][target_id]"

    #Overwrite Teaser 1 values
    And I enter "Headline 1" in the field with name "field_headline_1[0][value]"
    And I enter "Teaser Text 1" in the field with name "field_teaser_text_1[0][value]"

    #Close Teaser 1 group
    And I click on the summary with text "Teaser 1"

    #Configure Teaser 2
    #Open Teaser 2 group
    And I click on the summary with text "Teaser 2"

    #Select node
    And I enter "Edu Test (12)" in the field with name "field_node_source_1[0][target_id]"

    #Overwrite Teaser 2 values
    And I enter "Headline 2" in the field with name "field_headline_2[0][value]"
    And I enter "Teaser Text 2" in the field with name "field_teaser_text_2[0][value]"

    #Close Teaser 2 group
    And I click on the summary with text "Teaser 2"

    #Configure Teaser 3
    #Open Teaser 3 group
    And I click on the summary with text "Teaser 3"

    #Select node
    And I enter "JDE (15)" in the field with name "field_node_source_3[0][target_id]"

    #Overwrite Teaser deeplink
    And I enter "Page d'accueil (1)" in the field with name "field_teaser_deeplink_3[0][uri]"

    #Close Teaser 3 group
    And I click on the summary with text "Teaser 3"

    #Configure Teaser 4
    #Open Teaser 4 group
    And I click on the summary with text "Teaser 4"

    #Select node
    And I enter "Cookies Policy (11)" in the field with name "field_node_source_4[0][target_id]"

    #Close Teaser 4 group
    And I click on the summary with text "Teaser 4"

    #Save the teaser
    And I click on the button with label Save
    Then the page title is Name Product Brochure teaser Scenario 2 | Luxairtours

  #Check the frontend
    #Check the teaser global fields
    And I can see "Teaser title"
    And I can see "Teaser surtitle"

    #Check Teasers default contents
    And I can see "Teaser Title JDE"
    And I can see "Teaser Text JDE"

    And I can see "Cookies Policy"
    And I can see "Qu'est ce qu'un cookie ? (DE) Les cookies sont des petits fichiers texte qu'un site Web enregistre sur votre ordinateur ou appareil mobile lorsque vous visitez le site. Les cookies sont largement utilisés pour améliorer le fonctionnement du site, permettant une navigation plus rapide et plus efficace, ainsi que pour fournir des informations aux propriétaires de sites."

    #Check Teasers overwritten values
    And I can see "Headline 1"
    And I can see "Teaser Text 1"

    And I can see "Headline 2"
    And I can see "Teaser Text 2"

    #Check default links
    When I click on the teaser image 1
    Then the page title is Last-Minute | Luxairtours
    When I go back to the teaser page
    Then the page title is Name Product Brochure teaser Scenario 2 | Luxairtours

    When I click on the teaser image 2
    Then the page title is Edu Test | Luxairtours
    When I go back to the teaser page
    Then the page title is Name Product Brochure teaser Scenario 2 | Luxairtours

    When I click on the teaser image 4
    Then the page title is Cookies Policy | Luxairtours
    When I go back to the teaser page
    Then the page title is Name Product Brochure teaser Scenario 2 | Luxairtours


    #Check overwritten links
    When I click on the teaser image 3
    Then the page title is Page d'accueil | Luxairtours


  Scenario: Teaser with global teaser fields with title and external URL, using default contents and links for the offers

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Product Brochure teaser"
    When I enter "Product Brochure teaser Scenario 3" in the field with name "name[0][value]"

  #Configure Teaser Global fields
    And I enter "Teaser title" in the field with name "field_teaser_title[0][value]"
    And I enter "www.luxair.lu" in the field with name "field_teaser_link[0][uri]"
    And I enter "External URL" in the field with name "field_teaser_link[0][title]"

  #Configure Teasers
    #Configure Teaser 1
    #Open Teaser 1 group
    And I click on the summary with text "Teaser 1"

    #Select node
    And I enter "Last-Minute (13)" in the field with name "field_node_source_1[0][target_id]"

    #Close Teaser 1 group
    And I click on the summary with text "Teaser 1"

    #Configure Teaser 2
    #Open Teaser 2 group
    And I click on the summary with text "Teaser 2"

    #Select node
    And I enter "Edu Test (12)" in the field with name "field_node_source_2[0][target_id]"

    #Close Teaser 2 group
    And I click on the summary with text "Teaser 2"

    #Configure Teaser 3
    #Open Teaser 3 group
    And I click on the summary with text "Teaser 3"

    #Select node
    And I enter "JDE (15)" in the field with name "field_node_source_3[0][target_id]"

    #Close Teaser 3 group
    And I click on the summary with text "Teaser 3"

    #Configure Teaser 4
    #Open Teaser 4 group
    And I click on the summary with text "Teaser 4"

    #Select node
    And I enter "Cookies Policy (11)" in the field with name "field_node_source_4[0][target_id]"

    #Close Teaser 4 group
    And I click on the summary with text "Teaser 4"

  #Save the teaser
    And I click on the button with label Save
    Then the page title is Name Product Brochure teaser Scenario 3 | Luxairtours


  #Check the frontend
    #Check the teaser global fields
    And I can see "Teaser title"
    And I can see a button with label "External URL"

    #Check Teasers default contents
    And I can see "Offres last minute"
    And I can see "Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute,"

    And I can see "Teaser title info 1 (DE)"
    And I can see "Teaser text  (FR)"

    And I can see "Teaser Title JDE"
    And I can see "Teaser Text JDE"

    And I can see "Cookies Policy"
    And I can see "Qu'est ce qu'un cookie ? (DE) Les cookies sont des petits fichiers texte qu'un site Web enregistre sur votre ordinateur ou appareil mobile lorsque vous visitez le site. Les cookies sont largement utilisés pour améliorer le fonctionnement du site, permettant une navigation plus rapide et plus efficace, ainsi que pour fournir des informations aux propriétaires de sites."

    #Check default links
    When I click on the teaser image 1
    Then the page title is Last-Minute | Luxairtours
    When I go back to the teaser page
    Then the page title is Name Product Brochure teaser Scenario 3 | Luxairtours

    When I click on the teaser image 2
    Then the page title is Edu Test | Luxairtours
    When I go back to the teaser page
    Then the page title is Name Product Brochure teaser Scenario 3 | Luxairtours

    When I click on the teaser image 3
    Then the page title is JDE | Luxairtours
    When I go back to the teaser page
    Then the page title is Name Product Brochure teaser Scenario 3 | Luxairtours

    When I click on the teaser image 4
    Then the page title is Cookies Policy | Luxairtours
    When I go back to the teaser page
    Then the page title is Name Product Brochure teaser Scenario 3 | Luxairtours

    #Check global teaser link
    When I click on the button with label "External URL"
    Then the page title is Billets pas chers Luxembourg pour Milan \| Genève \| Berlin \| Vienne \| Londres \| Madrid avec Luxair


  Scenario: Teaser with global teaser fields with surtitle and internal link to a Deal node, using default contents and links for the offers

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Product Brochure teaser"
    When I enter "Product Brochure teaser Scenario 4" in the field with name "name[0][value]"

  #Configure Teaser Global fields
    And I enter "Teaser surtitle" in the field with name "field_teaser_surtitle[0][value]"
    And I enter "Edu Test (12)" in the field with name "field_teaser_link[0][uri]"
    And I enter "Information node" in the field with name "field_teaser_link[0][title]"

  #Configure Teasers
    #Configure Teaser 1
    #Open Teaser 1 group
    And I click on the summary with text "Teaser 1"

    #Select node
    And I enter "Last-Minute (13)" in the field with name "field_node_source_1[0][target_id]"

    #Close Teaser 1 group
    And I click on the summary with text "Teaser 1"

    #Configure Teaser 2
    #Open Teaser 2 group
    And I click on the summary with text "Teaser 2"

    #Select node
    And I enter "Edu Test (12)" in the field with name "field_node_source_2[0][target_id]"

    #Close Teaser 2 group
    And I click on the summary with text "Teaser 2"

    #Configure Teaser 3
    #Open Teaser 3 group
    And I click on the summary with text "Teaser 3"

    #Select node
    And I enter "JDE (15)" in the field with name "field_node_source_3[0][target_id]"

    #Close Teaser 3 group
    And I click on the summary with text "Teaser 3"

    #Configure Teaser 4
    #Open Teaser 4 group
    And I click on the summary with text "Teaser 4"

    #Select node
    And I enter "Cookies Policy (11)" in the field with name "field_node_source_4[0][target_id]"

    #Close Teaser 4 group
    And I click on the summary with text "Teaser 4"

  #Save the teaser
    And I click on the button with label Save
    Then the page title is Name Product Brochure teaser Scenario 3 | Luxairtours


  #Check the frontend
    #Check the teaser global fields
    And I can see "Teaser surtitle"
    And I can see a button with label "Information node"

    #Check Teasers default contents
    And I can see "Offres last minute"
    And I can see "Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute,"

    And I can see "Teaser title info 1 (DE)"
    And I can see "Teaser text  (FR)"

    And I can see "Teaser Title JDE"
    And I can see "Teaser Text JDE"

    And I can see "Cookies Policy"
    And I can see "Qu'est ce qu'un cookie ? (DE) Les cookies sont des petits fichiers texte qu'un site Web enregistre sur votre ordinateur ou appareil mobile lorsque vous visitez le site. Les cookies sont largement utilisés pour améliorer le fonctionnement du site, permettant une navigation plus rapide et plus efficace, ainsi que pour fournir des informations aux propriétaires de sites."

    #Check default links
    When I click on the teaser image 1
    Then the page title is Last-Minute | Luxairtours
    When I go back to the teaser page
    Then the page title is Name Product Brochure teaser Scenario 3 | Luxairtours

    When I click on the teaser image 2
    Then the page title is Edu Test | Luxairtours
    When I go back to the teaser page
    Then the page title is Name Product Brochure teaser Scenario 3 | Luxairtours

    When I click on the teaser image 3
    Then the page title is JDE | Luxairtours
    When I go back to the teaser page
    Then the page title is Name Product Brochure teaser Scenario 3 | Luxairtours

    When I click on the teaser image 4
    Then the page title is Cookies Policy | Luxairtours
    When I go back to the teaser page
    Then the page title is Name Product Brochure teaser Scenario 3 | Luxairtours

    #Check global teaser link
    When I click on the button with label "Information node"
    Then the page title is Edu Test | Luxairtours

  Scenario Outline: Teaser with global teaser fields with internal link to an Information, Destination or Overview node, using default contents and links for the offers

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Product Brochure teaser"
    When I enter "<scenario_name>" in the field with name "name[0][value]"

  #Configure Teaser Global fields
    And I enter "<node_name_with_id>" in the field with name "field_teaser_link[0][uri]"
    And I enter "<node_type>" in the field with name "field_teaser_link[0][title]"

  #Configure Teasers
    #Configure Teaser 1
    #Open Teaser 1 group
    And I click on the summary with text "Teaser 1"

    #Select node
    And I enter "Last-Minute (13)" in the field with name "field_node_source_1[0][target_id]"

    #Close Teaser 1 group
    And I click on the summary with text "Teaser 1"

    #Configure Teaser 2
    #Open Teaser 2 group
    And I click on the summary with text "Teaser 2"

    #Select node
    And I enter "Edu Test (12)" in the field with name "field_node_source_2[0][target_id]"

    #Close Teaser 2 group
    And I click on the summary with text "Teaser 2"

    #Configure Teaser 3
    #Open Teaser 3 group
    And I click on the summary with text "Teaser 3"

    #Select node
    And I enter "JDE (15)" in the field with name "field_node_source_3[0][target_id]"

    #Close Teaser 3 group
    And I click on the summary with text "Teaser 3"

    #Configure Teaser 4
    #Open Teaser 4 group
    And I click on the summary with text "Teaser 4"

    #Select node
    And I enter "Cookies Policy (11)" in the field with name "field_node_source_4[0][target_id]"

    #Close Teaser 4 group
    And I click on the summary with text "Teaser 4"

  #Save the teaser
    And I click on the button with label Save
    Then the page title is Name Product Brochure teaser Scenario 3 | Luxairtours


  #Check the frontend
    #Check the teaser global fields
    And I can see a button with label "<node_type>"

    #Check Teasers default contents
    And I can see "Offres last minute"
    And I can see "Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute,"

    And I can see "Teaser title info 1 (DE)"
    And I can see "Teaser text  (FR)"

    And I can see "Teaser Title JDE"
    And I can see "Teaser Text JDE"

    And I can see "Cookies Policy"
    And I can see "Qu'est ce qu'un cookie ? (DE) Les cookies sont des petits fichiers texte qu'un site Web enregistre sur votre ordinateur ou appareil mobile lorsque vous visitez le site. Les cookies sont largement utilisés pour améliorer le fonctionnement du site, permettant une navigation plus rapide et plus efficace, ainsi que pour fournir des informations aux propriétaires de sites."

    #Check default links
    When I click on the teaser image 1
    Then the page title is Last-Minute | Luxairtours
    When I go back to the teaser page
    Then the page title is Name Product Brochure teaser Scenario 3 | Luxairtours

    When I click on the teaser image 2
    Then the page title is Edu Test | Luxairtours
    When I go back to the teaser page
    Then the page title is Name Product Brochure teaser Scenario 3 | Luxairtours

    When I click on the teaser image 3
    Then the page title is JDE | Luxairtours
    When I go back to the teaser page
    Then the page title is Name Product Brochure teaser Scenario 3 | Luxairtours

    When I click on the teaser image 4
    Then the page title is Cookies Policy | Luxairtours
    When I go back to the teaser page
    Then the page title is Name Product Brochure teaser Scenario 3 | Luxairtours

    #Check global teaser link
    When I click on the button with label "<node_type>"
    Then the page title is <node_name> | Luxairtours

    Examples:
    |scenario_name|node_name|node_name_with_id|node_type|
    |Product Brochure teaser Scenario 5|Last-Minute|Last-Minute (13)|Deals node|
    |Product Brochure teaser Scenario 6|Berlin     |Berlin (7)      |Destination node|
    |Product Brochure teaser Scenario 7|Page d'accueil|Page d'accueil (1)|Overview node|