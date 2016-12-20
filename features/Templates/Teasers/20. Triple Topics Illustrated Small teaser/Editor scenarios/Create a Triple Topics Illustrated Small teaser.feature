Feature: Create a Triple Topics Illustrated Small teaser
  As a sales manager / content editor I want to advertise 3 topics or offers with this teaser

  @LGIT1.3.20.1.1 @LGIT1.3.20.1.4 @LGIT1.3.20.1.6.4 @LGIT1.3.20.1.6.5
  Scenario: Create a teaser with default contents for 3 hotels from a single query
    Given I have content editor right
    And I am on the teaser creation page for the teaser "Triple Topics Illustrated Small"
    When I enter "Triple Topics Illustrated Small - Scenario 1" in the field with label "Name"
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

    When I click on "Save"
    Then the page title is Name Triple Topics Illustrated Small - Scenario 1 | Luxairtours

    And I can see the image of the "Berlin Mark Hôtel"
    And I can see "Berlin Mark Hôtel"
    And I can see "7 days, 2 adults, 1 child, Frühstück"

    When I click on the link with label "More info"
    Then I can see "1 semaine"
    And I can see "2 Adultes et 1 Enfant"
    And I can see "Petit-déj"
    And I can see "Berlin Mark Hôtel"

  @LGIT1.3.20.1.1 @LGIT1.3.20.1.5 @LGIT1.3.20.1.6.1 @LGIT1.3.20.1.6.3 @LGIT1.3.20.1.6.2.1
  Scenario: Create a teaser with specific contents and an external link for Offer 1 of the 3 hotels from a single query
    Given I have content editor right
    And I am on the teaser creation page for the teaser "Triple Topics Illustrated Small"
    When I enter "Triple Topics Illustrated Small - Scenario 2" in the field with label "Name"
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
    When I click on "OFFER 1"
    And I enter "Headline 1" in the field with label "Headline 1"
    And I enter "Teaser Text 1" in the field with label "Teaser Text 1"
    And I enter "Teaser link text 1" in the field with label "Teaser link text 1"
    And I enter "https://www-acc2.luxairtours.lu/fr/travel/booking#!/searchtype=Package&openregion=3&hotelname=Berlin%20Mark%20H%C3%B4tel&adults=2&children=0&category=0&rating=1&recommendation=0&boards=BB&departuredate=2017-01-14&returndate=2017-01-21&durationstart=7&durationend=7&maxprice=2200.0&currency=EUR&daydiffdep=2&daydiffret=2" in the field with label "Teaser deeplink 3"
    And I click the button with label "Save"
    Then I can see "Headline 1"
    And I can see "Teaser Text 1"
    And I can see "Teaser link text 1"
    When I click on the link with label "Teaser link text 1"
    Then I am on the page with URL "https://www-acc2.luxairtours.lu/fr/travel/booking#!/searchtype=Package&openregion=3&hotelname=Berlin%20Mark%20H%C3%B4tel&adults=2&children=0&category=0&rating=1&recommendation=0&boards=BB&departuredate=2017-01-14&returndate=2017-01-21&durationstart=7&durationend=7&maxprice=2200.0&currency=EUR&daydiffdep=2&daydiffret=2"

  @LGIT1.3.20.1.1 @LGIT1.3.20.1.5 @LGIT1.3.20.1.6.1 @LGIT1.3.20.1.6.3 @LGIT1.3.20.1.6.2.2.1
  Scenario: Create a teaser with specific contents and an internal destination page link for Offer 3 of the 3 hotels from a single query
    Given I have content editor right
    And I am on the teaser creation page for the teaser "Triple Topics Illustrated Small"
    When I enter "Triple Topics Illustrated Small - Scenario 3" in the field with label "Name"
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
    When I click on "OFFER 3"
    And I enter "Headline 3" in the field with label "Headline 3"
    And I enter "Teaser Text 3" in the field with label "Teaser Text 3"
    And I enter "Teaser link text 3" in the field with label "Teaser link text 3"
    And I enter "Berlin (7)" in the field with label "Teaser deeplink 3"
    And I click the button with label "Save"
    Then I can see "Headline 3"
    And I can see "Teaser Text 3"
    And I can see "Teaser link text 3"
    When I click on the link with label "Teaser link text 3"
    Then the page title is "Berlin | Luxairtours"

  @LGIT1.3.20.1.2 @LGIT1.3.20.1.3.1 @LGIT1.3.20.1.3.3 @LGIT1.3.20.1.6.1 @LGIT1.3.20.1.6.5
  Scenario: Create a teaser with default contents for 1 hotel from a query and 2 internal contents
    Given I have content editor right
    And I am on the teaser creation page for the teaser "Triple Topics Illustrated Small"
    When I enter "Triple Topics Illustrated Small - Scenario 4" in the field with label "Name"
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
    Then I can see "Test_Berlin_18/02-26/02_2A1C_Family"
    When I enter "Teaser link text 1" in the field with label "Teaser link text 1"
    And I click on the link with label "OFFER 2"
    And I enter "Majorque" in the field with label "Content source 2"
    And I enter "Teaser link text 2" in the field with label "Teaser link text 2"
    And I click on the link with label "OFFER 3"
    And I enter "Edu Test (12)" in the field with label "Content source 3"

    And I click the button with label "Save"
    Then the page title is Name Triple Topics Illustrated Small - Scenario 4 | Luxairtours

    And I can see "Berlin Mark Hôtel"
    And I can see "7 days, 2 adults, 1 child, Frühstück"
    And I can see "Teaser link text 1"
    And I can see "Majorque"
    And I can see "Majorque est la plus grande des îles Baléares avec la capitale, Palma de Mallorca"
    And I can see "Teaser link text 2"
    And I can see "Teaser title info 1 (DE)"
    And I can see "Teaser text  (FR)"
    And I can see "More info"

    When I click on the link with label "Teaser link text 1"
    Then I can see "1 semaine"
    And I can see "2 Adultes et 1 Enfant"
    And I can see "Petit-déj"
    And I can see "Berlin Mark Hôtel"

    When I am on the "Teasers" page
    And I click on the link with label "Triple Topics Illustrated Small - Scenario 4"
    Then the page title is Name Triple Topics Illustrated Small - Scenario 4 | Luxairtours
    When I click on the link with label "Teaser link text 2"
    Then the page title is "Majorque | Luxairtours"

    When I am on the "Teasers" page
    And I click on the link with label "Triple Topics Illustrated Small - Scenario 4"
    Then the page title is Name Triple Topics Illustrated Small - Scenario 4 | Luxairtours
    When I click on the link with label "More info"
    Then the page title is "Edu Test | Luxairtours"

  @LGIT1.3.20.1.2 @LGIT1.3.20.1.3.2 @LGIT1.3.20.1.6.1 @LGIT1.3.20.1.6.2.2.2 @LGIT1.3.20.1.6.2.2.3 @LGIT1.3.20.1.6.2.2.4
  Scenario: Create a teaser with default contents but all links overwritten for 1 hotel from a query and 2 internal contents
    Given I have content editor right
    And I am on the teaser creation page for the teaser "Triple Topics Illustrated Small"
    When I enter "Triple Topics Illustrated Small - Scenario 5" in the field with label "Name"

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
    Then I can see "Test_Berlin_18/02-26/02_2A1C_Family"

    When I enter "Deals page" in the field with label "Teaser link text 1"
    And I enter "Last-Minute (13)" in the field with label "Teaser deeplink 1"

    And I click on the link with label "OFFER 2"
    And I enter "Majorque" in the field with label "Content source 2"
    And I enter "Overview page" in the field with label "Teaser link text 2"
    And I enter "Page d'accueil (1)" in the field with label "Teaser deeplink 2"

    And I click on the link with label "OFFER 3"
    And I enter "Last-Minute (13)" in the field with label "Content source 3"
    And I enter "Information page" in the field with label "Teaser link text 3"
    And I enter "Edu Test (12)" in the field with label "Teaser deeplink 3"

    And I click the button with label "Save"
    Then the page title is Name Triple Topics Illustrated Small - Scenario 5 | Luxairtours

    And I can see "Berlin Mark Hôtel"
    And I can see "7 days, 2 adults, 1 child, Frühstück"
    And I can see "Deals page"

    And I can see "Majorque"
    And I can see "Majorque est la plus grande des îles Baléares avec la capitale, Palma de Mallorca"
    And I can see "Overview page"

    And I can see "Offres last minute"
    And I can see "Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, "
    And I can see "Information page"

    When I click on the link with label "Deals page"
    Then the page title is "Last-Minute | Luxairtours"

    When I am on the "Teasers" page
    And I click on the link with label "Triple Topics Illustrated Small - Scenario 5"
    Then the page title is Name Triple Topics Illustrated Small - Scenario 5 | Luxairtours
    When I click on the link with label "Overview page"
    Then the page title is "Page d'accueil | Luxairtours"

    When I am on the "Teasers" page
    And I click on the link with label "Triple Topics Illustrated Small - Scenario 5"
    Then the page title is Name Triple Topics Illustrated Small - Scenario 5 | Luxairtours
    When I click on the link with label "Information page"
    Then the page title is "Edu Test | Luxairtours"