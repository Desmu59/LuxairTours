Feature : Create a Quatro Rolling Banners teaser
  As a sales manager / content editor
  I want to advertise 4 topics or offers with this teaser

  Scenario: Create a Quatro Rolling Banners teaser with 1 IBE query
    Given I have content editor right
    And I am on the teaser creation page for the teaser "Quatro Rolling Banners"
    When I enter "Quatro Rolling Banners Scenario 1" in the field with name "name[0][value]"

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
    Then the page title is Name Quatro Rolling Banners Scenario 1 | Luxairtours

  #Checks
    #Check Banner 1 values and links
    And I can see "Costa Calma, Espagne"
    And I can see "R2 Pájara Beach Hôtel & Spa"
    And I can see "8 jours, 2 adultes, All Inclusive"
    And I can see "apd 748€"
    When I click on the button with label "apd 748€"
    Then the page title is Luxair Tours IBE
    When I go back to the teaser page
    Then the page title is Name Quatro Rolling Banners Scenario 1 | Luxairtours
    
    #Check Banner 2 values and links
    When I click on the link with text "Caleta de Fuste, Espagne"
    Then I can see "Elba Carlota Beach Resort"
    And I can see "8 jours, 2 adultes, All Inclusive"
    And I can see "apd 793€"
    When I click on the button with label "apd 793€"
    Then the page title is Luxair Tours IBE
    When I go back to the teaser page
    Then the page title is Name Quatro Rolling Banners Scenario 1 | Luxairtours

    #Check Banner 3 values and links
    When I click on the link with text "Costa Calma, Espagne"
    Then I can see "Hôtel Primasol Drago Park"
    And I can see "8 jours, 2 adultes, All Inclusive"
    And I can see "apd 807€"
    When I click on the button with label "apd 807€"
    Then the page title is Luxair Tours IBE
    When I go back to the teaser page
    Then the page title is Name Quatro Rolling Banners Scenario 1 | Luxairtours

    #Check Banner 4 values and links
    When I click on the link with text "Jandia, Espagne"
    Then I can see "Hôtel IFA Altamarena"
    And I can see "8 jours, 2 adultes, All Inclusive"
    And I can see "apd 817€"
    When I click on the button with label "apd 817€"
    Then the page title is Luxair Tours IBE

  Scenario: Create a Quatro Rolling Banners teaser with 4 IBE queries, using default and overwritten contents and links - Scenario 1
    Given I have content editor right
    And I am on the teaser creation page for the teaser "Quatro Rolling Banners"
    When I enter "Quatro Rolling Banners Scenario 2" in the field with name "name[0][value]"

  #Configure the offers
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

  #Overwrite default content values
    When I enter "Headline 2" in the field with name "field_headline_2[0][value]"
    And I upload an image in the field with label "Image 2"
    And I enter "Teaser Text 2" in the field with name "field_teaser_text_2[0][value]"
    And I enter "http://www.luxair.lu" in the field with name "field_teaser_deeplink_2[0][uri]"
    And I enter "Subtitle 2" in the field with name "field_subtitle_2[0][value]"

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

  #Overwrite the IBE query with a destination node
    When I enter "Majorque (3)" in the field with name "field_node_source_3[0][target_id]"

  #Overwrite link to deals node
    And I enter "Last-Minute (13)" in the field with name "field_teaser_deeplink_3[0][uri]"

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

  #Overwrite the IBE query with a destination node
    When I enter "Edu Test (12)" in the field with name "field_node_source_4[0][target_id]"

  #Overwrite default content values
    When I enter "Headline 4" in the field with name "field_headline_4[0][value]"
    And I upload an image in the field with label "Image 4"
    And I enter "Teaser Text 4" in the field with name "field_teaser_text_4[0][value]"
    And I enter "Page d'accueil (1)" in the field with name "field_teaser_deeplink_4[0][uri]"
    And I enter "Subtitle 4" in the field with name "field_subtitle_4[0][value]"

  #Close Offer 4 group
    And I click on the summary with text "Offer 4"

  #Save the teaser
    And I click on the button with label Save
    Then the page title is Name Quatro Rolling Banners Scenario 2 | Luxairtours

  #Checks
    #Check Banner 1 values and links
    And I can see "Costa Calma, Espagne"
    And I can see "R2 Pájara Beach Hôtel & Spa"
    And I can see "8 jours, 2 adultes, All Inclusive"
    And I can see "apd 748€"
    When I click on the button with label "apd 748€"
    Then the page title is Luxair Tours IBE
    When I go back to the teaser page
    Then the page title is Name Quatro Rolling Banners Scenario 2 | Luxairtours

    #Check Banner 2 values and links
    When I click on the link with text "Subtitle 2"
    Then I can see "Headline 2"
    And I can see "Teaser Text 2"
    And I can see "apd 793€"
    When I click on the button with label "apd 793€"
    Then the page title is Billets pas chers Luxembourg pour Milan \| Genève \| Berlin \| Vienne \| Londres \| Madrid avec Luxair
    When I go back to the teaser page
    Then the page title is Name Quatro Rolling Banners Scenario 2 | Luxairtours

    #Check Banner 3 values and links
    When I click on the link with text "Costa Calma, Espagne"
    Then I can see "Majorque"
    And I can see "Majorque est la plus grande des îles Baléares avec la capitale, Palma de Mallorca"
    And I can see "apd 807€"
    When I click on the button with label "apd 807€"
    Then the page title is Last-Minute | Luxairtours
    When I go back to the teaser page
    Then the page title is Name Quatro Rolling Banners Scenario 2 | Luxairtours

    #Check Banner 4 values and links
    When I click on the link with text "Subtitle 4"
    Then I can see "Teaser title info 1 (DE)"
    And I can see "Teaser text  (FR)"
    And I can see "apd 817€"
    When I click on the button with label "apd 817€"
    Then the page title is Edu Test | Luxairtours

  Scenario: Create a Quatro Rolling Banners teaser with 4 IBE queries, using default and overwritten contents and links - Scenario 2
    Given I have content editor right
    And I am on the teaser creation page for the teaser "Quatro Rolling Banners"
    When I enter "Quatro Rolling Banners Scenario 3" in the field with name "name[0][value]"

  #Configure the offers
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

    #Overwrite the IBE query with a destination node
    When I enter "Last-Minute (13)" in the field with name "field_node_source_1[0][target_id]"

    #Overwrite link to destination node
    And I enter "Majorque (3)" in the field with name "field_teaser_deeplink_1[0][uri]"

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

  #Overwrite the IBE query with a destination node
    When I enter "Last-Minute (13)" in the field with name "field_node_source_2[0][target_id]"

    #Overwrite link to destination node
    And I enter "Edu Test (12)" in the field with name "field_teaser_deeplink_1[0][uri]"

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

  #Overwrite the IBE query with a destination node
    When I enter "Majorque (4)" in the field with name "field_node_source_3[0][target_id]"

  #Overwrite default content values
    When I enter "Headline 3" in the field with name "field_headline_3[0][value]"
    And I upload an image in the field with label "Image 3"
    And I enter "Teaser Text 3" in the field with name "field_teaser_text_3[0][value]"
    And I enter "Subtitle 3" in the field with name "field_subtitle_3[0][value]"

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

  #Overwrite the IBE query with a destination node
    When I enter "Edu Test (12)" in the field with name "field_node_source_4[0][target_id]"


  #Overwrite default content values
    When I enter "Headline 4" in the field with name "field_headline_4[0][value]"
    And I upload an image in the field with label "Image 4"
    And I enter "Teaser Text 4" in the field with name "field_teaser_text_4[0][value]"
    And I enter "Subtitle 4" in the field with name "field_subtitle_4[0][value]"

  #Close Offer 4 group
    And I click on the summary with text "Offer 4"

  #Save the teaser
    And I click on the button with label Save
    Then the page title is Name Quatro Rolling Banners Scenario 3 | Luxairtours

  #Checks
    #Check Banner 1 values and links
    And I can see "Costa Calma, Espagne"
    And I can see "Offres last minute"
    And I can see "Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, "
    And I can see "apd 748€"
    When I click on the button with label "apd 748€"
    Then the page title is Majorque | Luxairtours
    When I go back to the teaser page
    Then the page title is Name Quatro Rolling Banners Scenario 3 | Luxairtours

    #Check Banner 2 values and links
    When I click on the link with text "Subtitle 2"
    Then I can see "Offres last minute"
    And I can see "Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, "
    And I can see "apd 793€"
    When I click on the button with label "apd 793€"
    Then the page title is Edu Test | Luxairtours
    When I go back to the teaser page
    Then the page title is Name Quatro Rolling Banners Scenario 2 | Luxairtours

    #Check Banner 3 values and links
    When I click on the link with text "Subtitle 3"
    Then I can see "Headline 3"
    And I can see "Teaser Text 3"
    And I can see "apd 807€"
    When I click on the button with label "apd 807€"
    Then the page title is Majorque | Luxairtours
    When I go back to the teaser page
    Then the page title is Name Quatro Rolling Banners Scenario 2 | Luxairtours

    #Check Banner 4 values and links
    When I click on the link with text "Subtitle 4"
    Then I can see "Headline 4"
    And I can see "Teaser Text 4"
    And I can see "apd 817€"
    When I click on the button with label "apd 817€"
    Then the page title is Edu Test | Luxairtou

  Scenario: Create a Quatro Rolling Banners teaser using only nodes and default contents and links

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Quatro Rolling Banners"
    When I enter "Quatro Rolling Banners Scenario 4" in the field with name "name[0][value]"

  #Configure the offers
  #Configure Offer 1
  #Open Offer 1 group
    And I click on the summary with text "Offer 1"

    #Set overwritting node
    When I enter "Edu Test (12)" in the field with name "field_node_source_1[0][target_id]"

  #Close Offer 1 group
    And I click on the summary with text "Offer 1"

  #Configure Offer 2
  #Open Offer 2 group
    And I click on the summary with text "Offer 2"

    #Set overwritting node
    When I enter "Last-Minute (13)" in the field with name "field_node_source_2[0][target_id]"

  #Close Offer 2 group
    And I click on the summary with text "Offer 2"

  #Configure Offer 3
  #Open Offer 3 group
    And I click on the summary with text "Offer 3"

    #Set overwritting node
    When I enter "Majorque (4)" in the field with name "field_node_source_3[0][target_id]"

  #Close Offer 3 group
    And I click on the summary with text "Offer 3"

  #Configure Offer 4
  #Open Offer 4 group
    And I click on the summary with text "Offer 4"

    #Set overwritting node
    When I enter "Berlin (7)" in the field with name "field_node_source_4[0][target_id]"

  #Close Offer 4 group
    And I click on the summary with text "Offer 4"

  #Save the teaser
    And I click on the button with label Save
    Then the teaser is not saved
    And an error message to inform an IBE query is mandatory is displayed