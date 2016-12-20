Feature: 1/3, 2/3 OnImage carré double single offers
  As a sales manager / content editor I want to advertise 2 offer (1/3, 2/3 display view) with this teaser in combination
  with other offers of same or similar versions of this teaser type in one display block (paragraph “teaser combination”)

  Scenario: Create a 1/3, 2/3 OnImage carré double single offers with 1 IBE where offer 1 is using default contents, redirects to a URL and takes a 1/3 of the bundle on the left side and offer 2 using overwritten values, redirects to content page and takes 2/3 of the bundle on the right
    Given I have content editor right
    And I am on the teaser creation page for the teaser "1/3, 2/3 OnImage carré double single offers"
    When I enter "1/3, 2/3 OnImage carré double single offers Scenario 1" in the field with name "name[0][value]"

    #Select the Composition display mode
    And I select the value 1/3 2/3 display mode in the list with id edit-field-composition -display-mode

    #Create the query for offer 1
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

    #Overwrite link to URL for offer 1
    When I click on the summary with text "Offer 1"
    And I enter "https://www.luxair.lu" in the field with label "Teaser deeplink 1"

    #Overwrite values for Offer 2
    When I click on the summary with text "Offer 2"
    And I enter "Hotel name 2" in the field with label "Hotel name 2"
    And I enter "Destination 2" in the field with label "Destination 2"
    And I enter "Pack combination 2" in the field with label "Pack combination 2"
    And I upload an image in the field with label "Image 2"
    And I enter "Image alt" in the field with label "Alternative text"

    #Save the query and check page
    And I click on the button with label Save
    Then the page title is Name 1/3, 2/3 OnImage carré double single offers Scenario 1 | Luxairtours

    #Check default content for Offer 1
    And I can see Berlin, Deutschland
    And I can see Berlin Mark Hôtel
    And I can see 7 jours, 2 adultes, 1 enfant, petit-déjeuner
    And I can see a button with label apd 219€
    And I can see the content default image

    #Check the composition display mode for Offer 1
    And the image is 1/3 of the teaser size width on the left side

    #Check overwritten values for Offer 2
    And I can see Hotel name 2
    And I can see Destination 2
    And I can see Pack combination 2
    And I can see a button with label apd 318€
    And I can see the overwritten image
    And the image alt property is Image alt

    #Check the composition display mode for Offer 2
    And the image is 2/3 of the teaser size width on the right side

    #Check redirection to URL for offer 1
    When I click on the button with label apd 219€
    Then the page title is Billets pas chers Luxembourg pour Milan l Genève l Berlin l Vienne l Londres l Madrid avec Luxair

    #Check default redirection for offer 2
    When I click on the button with label apd 318€
    Then the page title is Luxair Tours IBE
    And I can see sam., 18.02.17 - dim., 26.02.16, 7 Nuits
    And I can see 2 Adultes, 1 Enfant
    And I can see Petit-déj
    And I can see Ameron Hôtel Abion Spreebogen Waterside Berlin

  Scenario: Create a 1/3, 2/3 OnImage carré double single offers with 1 IBE where offer 1 is using default contents, redirects to content page and takes 2/3 of the bundle on the left side and offer 2 is using overwritten values, redirects to a destination node and takes a 1/3 of the bundle on the right side

    Given I have content editor right
    And I am on the teaser creation page for the teaser "1/3, 2/3 OnImage carré double single offers"
    When I enter "1/3, 2/3 OnImage carré double single offers Scenario 2" in the field with name "name[0][value]"

    #Select the Composition display mode
    And I select the value 2/3 1/3 display mode in the list with label Composition display mode

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

    When I click on the summary with text "Offer 2"
    And I enter Hotel name 2 in the field with label Hotel name 2
    And I enter Destination 2 in the field with label Destination 2
    And I enter Pack combination 2 in the field with label Pack combination 2
    And I upload an image in the field with label Image 2
    And I enter Image alt in the field with label Alternative text

    And I enter Majorque in the field with label "Teaser deeplink 2"

    And I click the button with label "Save"

    Then the page title is Name 1/3, 2/3 OnImage carré double single offers Scenario 2 | Luxairtours

    And I can see Berlin, Deutschland
    And I can see Berlin Mark Hôtel
    And I can see 7 jours, 2 adultes, 1 enfant, petit-déjeuner
    And I can see a button with label apd 219€
    And I can see the content default image

    #Check the composition display mode for Offer 1
    And the image is 2/3 of the teaser size width on the left side

    And I can see Hotel name 2
    And I can see Destination 2
    And I can see Pack combination 2
    And I can see a button with label apd 318€
    And I can see the overwritten image
    And the image alt property is Image alt

    #Check the composition display mode for Offer 2
    And the image is 1/3 of the teaser size width on the right side

    When I click on the button with label apd 219€
    Then the page title is Luxair Tours IBE
    And I can see sam., 18.02.17 - dim., 26.02.16, 7 Nuits
    And I can see 2 Adultes, 1 Enfant
    And I can see Petit-déj
    And I can see Berlin Mark Hôtel

    When I click on the button with label apd 318€
    Then the page title is Majorque | Luxairtours

  Scenario: Create a 1/3, 2/3 OnImage carré double single offers with 2 IBE queries where offer 1 is using overwritten values, redirects to an information node and takes 2/3 of the bundle on the left side and offer 2 is using default contents, redirects to an Overview node and takes 1/3 of the bundle on the right side

    Given I have content editor right
    And I am on the teaser creation page for the teaser "1/3, 2/3 OnImage carré double single offers"
    When I enter "1/3, 2/3 OnImage carré double single offers Scenario 3" in the field with name "name[0][value]"

    #Select the Composition display mode
    And I select the value 2/3 1/3 display mode in the list with label Composition display mode

    #Create the query for Offer 1
    And I click on the link with label "OFFER 1"
    And I click on the button with label "Add new ibe query"
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
    Then I can see Test_Berlin_18/02-26/02_2A1C_Family

  #Overwrite values of Offer 1
    And I enter Hotel name 1 in the field with label Hotel name 1
    And I enter Destination 1 in the field with label Destination 1
    And I enter Pack combination 1 in the field with label Pack combination 1
    And I upload an image in the field with label Image 1
    And I enter Image alt in the field with label Alternative text

  #Overwrite deeplink to Information node
    And I enter Edu test in the field with label "Teaser deeplink 1"

  #Close Offer 1 to avoid entering data for Offer 2 in Offer 1 fields
    When I click on the link with label "OFFER 1"
    Then I don't see Test_Berlin_18/02-26/02_2A1C_Family

  #Create the query for Offer 2
    When I click on the link with label "OFFER 2"
    And I click on the button with label "Add new ibe query"
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

  #Overwrite deeplink to Overview node
    When I enter Page d'accueil in the field with label "Teaser deeplink 2"

  #Save the teaser and check the teaser page title
    And I click the button with label "Save"
    Then the page title is Name 1/3, 2/3 OnImage carré double single offers Scenario 3 | Luxairtours

  #Check the overwritten values of Offer 1
    And I can see Hotel name 1
    And I can see Destination 1
    And I can see Pack combination 1
    And I can see a button with label apd 219€
    And I can see the overwritten image
    And the image alt property is Image alt

    #Check the composition display mode for Offer 1
    And the image is 2/3 of the teaser size width on the left side

  #Check the default content of Offer 2
    And I can see Berlin, Deutschland
    And I can see Ameron Hôtel Abion Spreebogen Waterside Berlin
    And I can see 7 nuits, 2 adultes, 1 enfant, petit-déjeuner
    And I can see a button with label apd 318€
    And I can see the content default image

    #Check the composition display mode for Offer 2
    And the image is 1/3 of the teaser size width on the right side

  #Check the link to Information node for Offer 1
    When I click on the button with label apd 219€
    Then the page title is Edu test | Luxairtours

  #Check the link to Overview node for Offer 2
    When I click on the button with label apd 318€
    Then the page title is Page d'accueil | Luxairtours

  Scenario: Create a 1/3, 2/3 OnImage carré double single offers with 2 IBE queries where offer 1 is using overwritten values, redirects to the content and takes a 1/3 of the bundle on the left side and offer 2 is using default contents, redirects to a Deal node and takes 2/3 of the bundle on the right side

    Given I have content editor right
    And I am on the teaser creation page for the teaser "1/3, 2/3 OnImage carré double single offers"
    When I enter "1/3, 2/3 OnImage carré double single offers Scenario 4" in the field with name "name[0][value]"

    #Select the Composition display mode
    And I select the value 1/3 2/3 display mode in the list with label Composition display mode

  #Create the query for Offer 1
    And I click on the link with label "OFFER 1"
    And I click on the button with label "Add new ibe query"
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
    Then I can see Test_Berlin_18/02-26/02_2A1C_Family

  #Overwrite values of Offer 1
    And I enter Hotel name 1 in the field with label Hotel name 1
    And I enter Destination 1 in the field with label Destination 1
    And I enter Pack combination 1 in the field with label Pack combination 1
    And I upload an image in the field with label Image 1
    And I enter Image alt in the field with label Alternative text

  #Close Offer 1 to avoid entering data for Offer 2 in Offer 1 fields
    When I click on the link with label "OFFER 1"
    Then I don't see Test_Berlin_18/02-26/02_2A1C_Family

  #Create the query for Offer 2
    When I click on the link with label "OFFER 2"
    And I click on the button with label "Add new ibe query"
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

  #Overwrite deeplink to Overview node
    When I enter Last-Minute in the field with label "Teaser deeplink 2"

  #Save the teaser and check the teaser page title
    And I click the button with label "Save"
    Then the page title is Name 1/3, 2/3 OnImage carré double single offers Scenario 4 | Luxairtours

  #Check the overwritten values of Offer 1
    And I can see Hotel name 1
    And I can see Destination 1
    And I can see Pack combination 1
    And I can see a button with label apd 219€
    And I can see the overwritten image
    And the image alt property is Image alt

    #Check the composition display mode for Offer 1
    And the image is 1/3 of the teaser size width on the left side


  #Check the default content of Offer 2
    And I can see Berlin, Deutschland
    And I can see Ameron Hôtel Abion Spreebogen Waterside Berlin
    And I can see 7 nuits, 2 adultes, 1 enfant, petit-déjeuner
    And I can see a button with label apd 318€
    And I can see the content default image

    #Check the composition display mode for Offer 2
    And the image is 2/3 of the teaser size width on the right side


  #Check the link to Information node for Offer 1
    When I click on the button with label apd 219€
    Then the page title is Luxair Tours IBE

  #Check the link to Overview node for Offer 2
    When I click on the button with label apd 318€
    Then the page title is Page d'accueil | Luxairtours