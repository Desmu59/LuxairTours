Feature: Create Image + Quatro offers textlink teaser
  As a sales manager / content editor
  I want to advertise 4 offers with this teaser optional with a global illustration.

  Scenario: Create a Image + Quatro offers textlink teaser from 4 IBE queries mixing default and overwritten contents, using the text offers with image display and a teaser title
    #Offer 1 using default contents
    #Offer 2 using default contents except the destination
    #Offer 3 using default contents except the offer link which redirects to an external URL
    #Offer 4 using default contents except the destination and the offer link which redirects to a destination node

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Image + Quatro offers textlink"
    When I enter "Image + Quatro offers textlink Scenario 1" in the field with name "name[0][value]"

  #Configure Teaser
    #Set the teaser title
    And I enter "Teaser title" in the field with name "field_teaser_title[0][value]"

    #Set the Offers display mode and upload an image
    And I select "text offers with image" in the field with label "field_offers_display_mode"
    And I upload an image in the field with label "Image"
    And I enter "Alternative text" in the field with name "field_image_1[0][alt]"

  #Configure Offers
    #Configure Offer 1
    #Open Offer 1 group
    And I click on the summary with text "Offer 1"

    #Configure IBE query
    And I click on the button with label "Add new IBE query"
    Then I can see the field with the label "IBE BUILDER"

    When I enter "Test JDE_FUE_Summer17_AllInclusive" in the field with name "field_query_1[form][inline_entity_form][entities][0][form][name][0][value]"
    And I click on the summary with text "IBE builder"
    And I select "All Inclusive" in the field with label "Hotel Board Type"
    And I enter "2" in the field with name "field_query_1[form][inline_entity_form][query][0][builder][adultsCount]"
    And I enter "01/04/2017" in the field with name "field_query_1[form][inline_entity_form][entities][0][form][query][0][builder][dateFrom]"
    And I enter "31/10/2017" in the field with name "field_query_1[form][inline_entity_form][entities][0][form][query][0][builder][dateTo]"
    And I enter "7" in the field with name "field_query_1[form][inline_entity_form][entities][0][form][query][0][builder][duration]"
    And I enter "1000" in the field with name "field_query_1[form][inline_entity_form][entities][0][form][query][0][builder][treeId]"
    And I enter "2101" in the field with name "field_query_1[form][inline_entity_form][entities][0][form][query][0][builder][groupId]"
    And I click on the button with value "Create ibe query"
    Then I can see "Test JDE_FUE_Summer17_AllInclusive"

    #Close Offer 1 group
    And I click on the summary with text "Offer 1"

    #Configure Offer 2
    #Open Offer 2 group
    And I click on the summary with text "Offer 2"

    #Configure IBE query
    And I click on the button with label "Add new IBE query"
    Then I can see the field with the label "IBE BUILDER"

    When I enter "Test JDE_FUE_Summer17_AllInclusive_from793" in the field with name "field_query_2[form][inline_entity_form][entities][0][form][name][0][value]"
    And I click on the summary with text "IBE builder"
    And I select "All Inclusive" in the field with label "Hotel Board Type"
    And I enter "2" in the field with name "field_query_2[form][inline_entity_form][query][0][builder][adultsCount]"
    And I enter "01/04/2017" in the field with name "field_query_2[form][inline_entity_form][entities][0][form][query][0][builder][dateFrom]"
    And I enter "31/10/2017" in the field with name "field_query_2[form][inline_entity_form][entities][0][form][query][0][builder][dateTo]"
    And I enter "7" in the field with name "field_query_2[form][inline_entity_form][entities][0][form][query][0][builder][duration]"
    And I enter "793" in the field with name "field_query_2[form][inline_entity_form][query][0][builder][priceFrom]"
    And I enter "1000" in the field with name "field_query_2[form][inline_entity_form][entities][0][form][query][0][builder][treeId]"
    And I enter "2101" in the field with name "field_query_2[form][inline_entity_form][entities][0][form][query][0][builder][groupId]"
    And I click on the button with value "Create ibe query"
    Then I can see "Test JDE_FUE_Summer17_AllInclusive"

    #Overwrite destination 2
    And I enter "Majorque (7)" in the field with name "field_subtitle_2[0][value]"

    #Close Offer 2 group
    And I click on the summary with text "Offer 2"

    #Configure Offer 3
    #Open Offer 3 group
    And I click on the summary with text "Offer 3"

    #Configure IBE query
    And I click on the button with label "Add new IBE query"
    Then I can see the field with the label "IBE BUILDER"

    When I enter "Test JDE_FUE_Summer17_AllInclusive_from807" in the field with name "field_query_3[form][inline_entity_form][entities][0][form][name][0][value]"
    And I click on the summary with text "IBE builder"
    And I select "All Inclusive" in the field with label "Hotel Board Type"
    And I enter "2" in the field with name "field_query_3[form][inline_entity_form][query][0][builder][adultsCount]"
    And I enter "01/04/2017" in the field with name "field_query_3[form][inline_entity_form][entities][0][form][query][0][builder][dateFrom]"
    And I enter "31/10/2017" in the field with name "field_query_3[form][inline_entity_form][entities][0][form][query][0][builder][dateTo]"
    And I enter "7" in the field with name "field_query_3[form][inline_entity_form][entities][0][form][query][0][builder][duration]"
    And I enter "807" in the field with name "field_query_3[form][inline_entity_form][query][0][builder][priceFrom]"
    And I enter "1000" in the field with name "field_query_3[form][inline_entity_form][entities][0][form][query][0][builder][treeId]"
    And I enter "2101" in the field with name "field_query_3[form][inline_entity_form][entities][0][form][query][0][builder][groupId]"
    And I click on the button with value "Create ibe query"
    Then I can see "Test JDE_FUE_Summer17_AllInclusive"

    #Overwrite Teaser deeplink 3
    And I enter "http://www.luxair.lu" in the field with name "field_teaser_deeplink_3[0][uri]"

    #Close Offer 3 group
    And I click on the summary with text "Offer 3"

    #Configure Offer 4
    #Open Offer 4 group
    And I click on the summary with text "Offer 4"

    #Configure IBE query
    And I click on the button with label "Add new IBE query"
    Then I can see the field with the label "IBE BUILDER"

    When I enter "Test JDE_FUE_Summer17_AllInclusive_from817" in the field with name "field_query_4[form][inline_entity_form][entities][0][form][name][0][value]"
    And I click on the summary with text "IBE builder"
    And I select "All Inclusive" in the field with label "Hotel Board Type"
    And I enter "2" in the field with name "field_query_4[form][inline_entity_form][query][0][builder][adultsCount]"
    And I enter "01/04/2017" in the field with name "field_query_4[form][inline_entity_form][entities][0][form][query][0][builder][dateFrom]"
    And I enter "31/10/2017" in the field with name "field_query_4[form][inline_entity_form][entities][0][form][query][0][builder][dateTo]"
    And I enter "7" in the field with name "field_query_4[form][inline_entity_form][entities][0][form][query][0][builder][duration]"
    And I enter "817" in the field with name "field_query_4[form][inline_entity_form][query][0][builder][priceFrom]"
    And I enter "1000" in the field with name "field_query_4[form][inline_entity_form][entities][0][form][query][0][builder][treeId]"
    And I enter "2101" in the field with name "field_query_4[form][inline_entity_form][entities][0][form][query][0][builder][groupId]"
    And I click on the button with value "Create ibe query"
    Then I can see "Test JDE_FUE_Summer17_AllInclusive"

    #Overwrite destination 4 and teaser deeplink 4
    And I enter "Berlin (3)" in the field with name "field_subtitle_4[0][value]"
    And I enter "Berlin (3)" in the field with name "field_teaser_deeplink_4[0][uri]"

    #Close Offer 4 group
    And I click on the summary with text "Offer 4"

  #Save the teaser
    And I click on the button with label Save
    Then the page title is Name Image + Quatro offers textlink Scenario 1 | Luxairtours
  
  #Checks
    #Check teaser configuration
    And I can see "Teaser title"
    And I can see the uploaded image on the left side of the teaser
    And the image alt property is Alternative text
    And I can see the offers on the right side of the teaser

    #Check the destinations for the offers
    And I can see "Costa Calma"
    And I can see "Majorque"
    And I can see "Costa Calma"
    And I can see "Berlin"

    #Check the prices for the offers
    And I can see "apd 748€"
    And I can see "apd 793€"
    And I can see "apd 807€"
    And I can see "apd 817€"
    
    #Check the links for the offers
    When I click on the button with label "apd 748€"
    Then the page title is Luxair Tours IBE
    When I go back to the teaser page
    Then the page title is Name Image + Quatro offers textlink Scenario 1 | Luxairtours

    When I click on the button with label "apd 793€"
    Then the page title is Luxair Tours IBE
    When I go back to the teaser page
    Then the page title is Name Image + Quatro offers textlink Scenario 1 | Luxairtours

    When I click on the button with label "apd 807€"
    Then the page title is Billets pas chers Luxembourg pour Milan l Genève l Berlin l Vienne l Londres l Madrid avec Luxair
    When I go back to the teaser page
    Then the page title is Name Image + Quatro offers textlink Scenario 1 | Luxairtours

    When I click on the button with label "apd 817€"
    Then the page title is Berlin | Luxairtours

  Scenario: Create a Image + Quatro offers textlink teaser from 4 IBE queries mixing default and overwritten contents, using the text offers only display, a teaser title and a teaser subtitle
  #Offer 1 using default contents except the offer link which redirects to an Information node
  #Offer 2 using default contents except the offer link which redirects to a Deals node
  #Offer 3 using default contents except the offer link which redirects to an Overview node
  #Offer 4 using default contents

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Image + Quatro offers textlink"
    When I enter "Image + Quatro offers textlink Scenario 2" in the field with name "name[0][value]"

#Configure Teaser
  #Set the teaser title
    And I enter "Teaser title" in the field with name "field_teaser_title[0][value]"
    And I enter "Teaser surtitle" in the field with name "field_teaser_surtitle[0][value]"

  #Set the Offers display mode and upload an image
    And I select "text offers only" in the field with label "field_offers_display_mode"

#Configure Offers
  #Configure Offer 1
  #Open Offer 1 group
    And I click on the summary with text "Offer 1"

  #Configure IBE query
    And I click on the button with label "Add new IBE query"
    Then I can see the field with the label "IBE BUILDER"

    When I enter "Test JDE_FUE_Summer17_AllInclusive" in the field with name "field_query_1[form][inline_entity_form][entities][0][form][name][0][value]"
    And I click on the summary with text "IBE builder"
    And I select "All Inclusive" in the field with label "Hotel Board Type"
    And I enter "2" in the field with name "field_query_1[form][inline_entity_form][query][0][builder][adultsCount]"
    And I enter "01/04/2017" in the field with name "field_query_1[form][inline_entity_form][entities][0][form][query][0][builder][dateFrom]"
    And I enter "31/10/2017" in the field with name "field_query_1[form][inline_entity_form][entities][0][form][query][0][builder][dateTo]"
    And I enter "7" in the field with name "field_query_1[form][inline_entity_form][entities][0][form][query][0][builder][duration]"
    And I enter "1000" in the field with name "field_query_1[form][inline_entity_form][entities][0][form][query][0][builder][treeId]"
    And I enter "2101" in the field with name "field_query_1[form][inline_entity_form][entities][0][form][query][0][builder][groupId]"
    And I click on the button with value "Create ibe query"
    Then I can see "Test JDE_FUE_Summer17_AllInclusive"

  #Overwrite teaser deeplink 1
    And I enter "Edu Test (12)" in the field with name "field_teaser_deeplink_1[0][uri]"

  #Close Offer 1 group
    And I click on the summary with text "Offer 1"

  #Configure Offer 2
  #Open Offer 2 group
    And I click on the summary with text "Offer 2"

  #Configure IBE query
    And I click on the button with label "Add new IBE query"
    Then I can see the field with the label "IBE BUILDER"

    When I enter "Test JDE_FUE_Summer17_AllInclusive_from793" in the field with name "field_query_2[form][inline_entity_form][entities][0][form][name][0][value]"
    And I click on the summary with text "IBE builder"
    And I select "All Inclusive" in the field with label "Hotel Board Type"
    And I enter "2" in the field with name "field_query_2[form][inline_entity_form][query][0][builder][adultsCount]"
    And I enter "01/04/2017" in the field with name "field_query_2[form][inline_entity_form][entities][0][form][query][0][builder][dateFrom]"
    And I enter "31/10/2017" in the field with name "field_query_2[form][inline_entity_form][entities][0][form][query][0][builder][dateTo]"
    And I enter "7" in the field with name "field_query_2[form][inline_entity_form][entities][0][form][query][0][builder][duration]"
    And I enter "793" in the field with name "field_query_2[form][inline_entity_form][query][0][builder][priceFrom]"
    And I enter "1000" in the field with name "field_query_2[form][inline_entity_form][entities][0][form][query][0][builder][treeId]"
    And I enter "2101" in the field with name "field_query_2[form][inline_entity_form][entities][0][form][query][0][builder][groupId]"
    And I click on the button with value "Create ibe query"
    Then I can see "Test JDE_FUE_Summer17_AllInclusive"

  #Overwrite teaser deeplink 2
    And I enter "Last-Minute (13)" in the field with name "field_teaser_deeplink_2[0][uri]"

  #Close Offer 2 group
    And I click on the summary with text "Offer 2"

  #Configure Offer 3
  #Open Offer 3 group
    And I click on the summary with text "Offer 3"

  #Configure IBE query
    And I click on the button with label "Add new IBE query"
    Then I can see the field with the label "IBE BUILDER"

    When I enter "Test JDE_FUE_Summer17_AllInclusive_from807" in the field with name "field_query_3[form][inline_entity_form][entities][0][form][name][0][value]"
    And I click on the summary with text "IBE builder"
    And I select "All Inclusive" in the field with label "Hotel Board Type"
    And I enter "2" in the field with name "field_query_3[form][inline_entity_form][query][0][builder][adultsCount]"
    And I enter "01/04/2017" in the field with name "field_query_3[form][inline_entity_form][entities][0][form][query][0][builder][dateFrom]"
    And I enter "31/10/2017" in the field with name "field_query_3[form][inline_entity_form][entities][0][form][query][0][builder][dateTo]"
    And I enter "7" in the field with name "field_query_3[form][inline_entity_form][entities][0][form][query][0][builder][duration]"
    And I enter "807" in the field with name "field_query_3[form][inline_entity_form][query][0][builder][priceFrom]"
    And I enter "1000" in the field with name "field_query_3[form][inline_entity_form][entities][0][form][query][0][builder][treeId]"
    And I enter "2101" in the field with name "field_query_3[form][inline_entity_form][entities][0][form][query][0][builder][groupId]"
    And I click on the button with value "Create ibe query"
    Then I can see "Test JDE_FUE_Summer17_AllInclusive"

  #Overwrite teaser deeplink 3
    And I enter "Page d'accueil (1)" in the field with name "field_teaser_deeplink_3[0][uri]"

  #Close Offer 3 group
    And I click on the summary with text "Offer 3"

  #Configure Offer 4
  #Open Offer 4 group
    And I click on the summary with text "Offer 4"

  #Configure IBE query
    And I click on the button with label "Add new IBE query"
    Then I can see the field with the label "IBE BUILDER"

    When I enter "Test JDE_FUE_Summer17_AllInclusive_from817" in the field with name "field_query_4[form][inline_entity_form][entities][0][form][name][0][value]"
    And I click on the summary with text "IBE builder"
    And I select "All Inclusive" in the field with label "Hotel Board Type"
    And I enter "2" in the field with name "field_query_4[form][inline_entity_form][query][0][builder][adultsCount]"
    And I enter "01/04/2017" in the field with name "field_query_4[form][inline_entity_form][entities][0][form][query][0][builder][dateFrom]"
    And I enter "31/10/2017" in the field with name "field_query_4[form][inline_entity_form][entities][0][form][query][0][builder][dateTo]"
    And I enter "7" in the field with name "field_query_4[form][inline_entity_form][entities][0][form][query][0][builder][duration]"
    And I enter "817" in the field with name "field_query_4[form][inline_entity_form][query][0][builder][priceFrom]"
    And I enter "1000" in the field with name "field_query_4[form][inline_entity_form][entities][0][form][query][0][builder][treeId]"
    And I enter "2101" in the field with name "field_query_4[form][inline_entity_form][entities][0][form][query][0][builder][groupId]"
    And I click on the button with value "Create ibe query"
    Then I can see "Test JDE_FUE_Summer17_AllInclusive"

  #Close Offer 4 group
    And I click on the summary with text "Offer 4"

#Save the teaser
    And I click on the button with label Save
    Then the page title is Name Image + Quatro offers textlink Scenario 2 | Luxairtours

#Checks
  #Check teaser configuration
    And I can see "Teaser title"
    And I can see "Teaser surtitle"
    And the offers are displayed in one column

  #Check the destinations for the offers
    And I can see "Costa Calma"
    And I can see "Caleta de Fuste"
    And I can see "Costa Calma"
    And I can see "Jandia"

  #Check the prices for the offers
    And I can see "apd 748€"
    And I can see "apd 793€"
    And I can see "apd 807€"
    And I can see "apd 817€"

  #Check the durations for the offers
    And I can see "7 nuits"
    And I can see "7 nuits"
    And I can see "7 nuits"
    And I can see "7 nuits"

  #Check the hotel category for the offers
    And I can see "4 stars"
    And I can see "4 stars"
    And I can see "4 stars"
    And I can see "4 stars"

  #Check the links for the offers
    When I click on the button with label "apd 748€"
    Then the page title is Edu Test | Luxairtours
    When I go back to the teaser page
    Then the page title is Name Image + Quatro offers textlink Scenario 2 | Luxairtours

    When I click on the button with label "apd 793€"
    Then the page title is Last-Minute | Luxairtours
    When I go back to the teaser page
    Then the page title is Name Image + Quatro offers textlink Scenario 2 | Luxairtours

    When I click on the button with label "apd 807€"
    Then the page title is Page d'accueil | Luxairtours
    When I go back to the teaser page
    Then the page title is Name Image + Quatro offers textlink Scenario 2 | Luxairtours

    When I click on the button with label "apd 817€"
    Then the page title is Luxair Tours IBE

  Scenario: Create a Image + Quatro offers textlink teaser from 1 IBE query with default contents, using the text offers with image display and no link
    Given I have content editor right
    And I am on the teaser creation page for the teaser "Image + Quatro offers textlink"
    When I enter "Image + Quatro offers textlink Scenario 3" in the field with name "name[0][value]"

  #Configure Teaser
    #Set the Offers display mode and upload an image
    And I select "text offers with image" in the field with label "field_offers_display_mode"
    And I upload an image in the field with label "Image"
    And I enter "Alternative text" in the field with name "field_image_1[0][alt]"

  #Configure the offers
    #Configure IBE query
    And I click on the button with label "Add new IBE query"
    Then I can see the field with the label "IBE BUILDER"

    When I enter "Test JDE_FUE_Summer17_AllInclusive" in the field with name "field_query_1[form][inline_entity_form][entities][0][form][name][0][value]"
    And I click on the summary with text "IBE builder"
    And I select "All Inclusive" in the field with label "Hotel Board Type"
    And I enter "2" in the field with name "field_query_1[form][inline_entity_form][query][0][builder][adultsCount]"
    And I enter "01/04/2017" in the field with name "field_query_1[form][inline_entity_form][entities][0][form][query][0][builder][dateFrom]"
    And I enter "31/10/2017" in the field with name "field_query_1[form][inline_entity_form][entities][0][form][query][0][builder][dateTo]"
    And I enter "7" in the field with name "field_query_1[form][inline_entity_form][entities][0][form][query][0][builder][duration]"
    And I enter "1000" in the field with name "field_query_1[form][inline_entity_form][entities][0][form][query][0][builder][treeId]"
    And I enter "2101" in the field with name "field_query_1[form][inline_entity_form][entities][0][form][query][0][builder][groupId]"
    And I click on the button with value "Create ibe query"
    Then I can see "Test JDE_FUE_Summer17_AllInclusive"

  #Save the teaser
    And I click on the button with label Save
    Then the page title is Name Image + Quatro offers textlink Scenario 3 | Luxairtours

  #Checks
    #Check teaser configuration
    And I can see the uploaded image on the left side of the teaser
    And the image alt property is Alternative text
    And I can see the offers on the right side of the teaser

    #Check the destinations for the offers
    And I can see "Costa Calma"
    And I can see "Caleta de Fuste"
    And I can see "Costa Calma"
    And I can see "Jandia"

  #Check the prices for the offers
    And I can see "apd 748€"
    And I can see "apd 793€"
    And I can see "apd 807€"
    And I can see "apd 817€"

  Scenario Outline: Create a Image + Quatro offers textlink teaser from 1 IBE query with default contents, using the text offers only display and different links
    Given I have content editor right
    And I am on the teaser creation page for the teaser "Image + Quatro offers textlink"
    When I enter "<scenario_name>" in the field with name "name[0][value]"

  #Configure Teaser
    #Set the Offers display mode and upload an image
    And I enter "<title>" in the field with name "field_teaser_title[0][value]"
    And I enter "<surtitle>" in the field with name "field_teaser_surtitle[0][value]"

    And I enter "<node_name>" in the field with name "field_teaser_link[0][uri]"
    And I enter "<node_type>" in the field with name "field_teaser_link[0][title]"
    And I select "text offers only" in the field with label "field_offers_display_mode"

  #Configure the offers
    #Configure IBE query
    And I click on the button with label "Add new IBE query"
    Then I can see the field with the label "IBE BUILDER"

    When I enter "Test JDE_FUE_Summer17_AllInclusive" in the field with name "field_query_1[form][inline_entity_form][entities][0][form][name][0][value]"
    And I click on the summary with text "IBE builder"
    And I select "All Inclusive" in the field with label "Hotel Board Type"
    And I enter "2" in the field with name "field_query_1[form][inline_entity_form][query][0][builder][adultsCount]"
    And I enter "01/04/2017" in the field with name "field_query_1[form][inline_entity_form][entities][0][form][query][0][builder][dateFrom]"
    And I enter "31/10/2017" in the field with name "field_query_1[form][inline_entity_form][entities][0][form][query][0][builder][dateTo]"
    And I enter "7" in the field with name "field_query_1[form][inline_entity_form][entities][0][form][query][0][builder][duration]"
    And I enter "1000" in the field with name "field_query_1[form][inline_entity_form][entities][0][form][query][0][builder][treeId]"
    And I enter "2101" in the field with name "field_query_1[form][inline_entity_form][entities][0][form][query][0][builder][groupId]"
    And I click on the button with value "Create ibe query"
    Then I can see "Test JDE_FUE_Summer17_AllInclusive"

  #Save the teaser
    And I click on the button with label Save
    Then the page title is Name <scenario_name> | Luxairtours

  #Checks
    #Check teaser configuration
    And I can see "<title>"
    And I can see "<surtitle>"
    And the offers are displayed in one column

    #Check the destinations for the offers
    And I can see "Costa Calma"
    And I can see "Caleta de Fuste"
    And I can see "Costa Calma"
    And I can see "Jandia"

  #Check the prices for the offers
    And I can see "apd 748€"
    And I can see "apd 793€"
    And I can see "apd 807€"
    And I can see "apd 817€"

  #Check the durations for the offers
    And I can see "7 nuits"
    And I can see "7 nuits"
    And I can see "7 nuits"
    And I can see "7 nuits"

  #Check the hotel category for the offers
    And I can see "4 stars"
    And I can see "4 stars"
    And I can see "4 stars"
    And I can see "4 stars"

  #Check the teaser button
    And I can see a button with label "<node_type>"
    When I click on the button with label "<node_type>"
    Then the page title is <page_name>

  Examples:
    |scenario_name|title|surtitle|node_name|node_type|page_name|
    |Image + Quatro offers textlink Scenario 4|||Majorque (4)|Destination node|Majorque \| Luxairtours|
    |Image + Quatro offers textlink Scenario 5|Teaser title|Teaser surtitle|Edu Test (12)|Information node|Edu Test \| Luxairtours|
    |Image + Quatro offers textlink Scenario 6|Teaser title||Last-Minute (13)|Deals node   |Last-Minute \| Luxairtours|
    |Image + Quatro offers textlink Scenario 7||Teaser surtitle|Page d'accueil (1)|Overview node|Page d'accueil \| Luxairtours|
    |Image + Quatro offers textlink Scenario 8|Teaser title|Teaser surtitle|http://www.luxair.lu|External URL|Billets pas chers Luxembourg pour Milan \| Genève \| Berlin \| Vienne \| Londres \| Madrid avec Luxair|