Feature: Create a 1/1 OnImage carré teaser
  As a sales manager / content editor I want to advertise 1 offer with this teaser in combination with other offers of same
  or similar versions of this teaser type in one display block (paragraph “teaser combination”)

  @LGIT1.3.1.1.1 @LGIT1.3.1.1.2 @LGIT1.3.1.1.4.1.2
Scenario: Create a 1/1 OnImage carré teaser using default contents but redirecting to an external URL

  Given I have content editor right
  And I am on the teaser creation page for the teaser "1/1 OnImage carré teaser"
  When I enter "1/1 OnImage carré teaser - Scenario 1" in the field with name "name[0][value]"
  And I click on the button with label "Add new IBE query"
  Then the field with the label "IBE BUILDER" is present

  When I enter "Test_Berlin_18/02-26/02_2A1C_Family" in the field with name "query[form][inline_entity_form][name][0][value]"
  And I click on the button with label "IBE BUILDER"
  And I select "Bed & Breakfast" in the field with label "query[form][inline_entity_form][query][0][builder][hotelBoardType]"
  And I enter "2" in the field with name "query[form][inline_entity_form][query][0][builder][adultsCount]"
  And I enter "1" in the field with name "query[form][inline_entity_form][query][0][builder][childrenCount]"
  And I enter "18/02/2017" in the field with name "query[form][inline_entity_form][query][0][builder][dateFrom]"
  And I enter "26/02/2017" in the field with name "query[form][inline_entity_form][query][0][builder][dateTo]"
  And I enter "7" in the field with name "query[form][inline_entity_form][query][0][builder][duration]"
  And I enter "1000" in the field with name "query[form][inline_entity_form][query][0][builder][treeId]"
  And I enter "301" in the field with name "query[form][inline_entity_form][query][0][builder][groupId]"
  And I click on the button with label "Create ibe query"
  Then I can see "Test_Berlin_18/02-26/02_2A1C_Family"

  When I enter "https://www.luxair.lu" in the field with name "field_teaser_deeplink_1[0][uri]"
  And I click on the button with label "Save"

  Then the page title is Name 1/1 OnImage carré teaser - Scenario 1 | Luxairtours
  And I can see Berlin, Deutschland
  And I can see Berlin Mark Hôtel
  And I can see 7 jours, 2 adultes, 1 enfant, petit-déjeuner
  And I can see a button with label apd 219€
  And the teaser large class is background:linear-gradient(rgba(31,22,0,0.15),rgba(31,22,0,0.15)), url(https://i.giatamedia.com/s.php?uid=612&source=xmlpool2&size=074&cid=17764&file=cat017764_032_03.jpg&iid=30229706) center center no-repeat; background-size:cover;

  When I click on the button with label apd 219€
  Then the page title is Billets pas chers Luxembourg pour Milan l Genève l Berlin l Vienne l Londres l Madrid avec Luxair

  @LGIT1.3.1.1.1 @LGIT1.3.1.1.3 @LGIT1.3.1.1.4.2
  Scenario: Create a 1/1 OnImage carré teaser overwritting default contents but keeping the default URL

  Given I have content editor right
  And I am on the teaser creation page for the teaser "1/1 OnImage carré teaser"
  When I enter "1/1 OnImage carré teaser - Scenario 2" in the field with name "name[0][value]"
  And I click on the button with label "Add new IBE query"
  Then I can see the field with the label "IBE BUILDER"

  When I enter "Test_Berlin_18/02-26/02_2A1C_Family" in the field with name "name[0][value]"
  And I click on the button with label "IBE BUILDER"
  And I select "Bed & Breakfast" in the field with label "Hotel Board Type"
  And I enter "2" in the field with name "query[form][inline_entity_form][query][0][builder][adultsCount]"
  And I enter "1" in the field with name "query[form][inline_entity_form][query][0][builder][childrenCount]"
  And I enter "18/02/2017" in the field with name "query[form][inline_entity_form][query][0][builder][dateFrom]"
  And I enter "26/02/2017" in the field with name "query[form][inline_entity_form][query][0][builder][dateTo]"
  And I enter "7" in the field with name "query[form][inline_entity_form][query][0][builder][duration]"
  And I enter "1000" in the field with name "query[form][inline_entity_form][query][0][builder][treeId]"
  And I enter "301" in the field with name "query[form][inline_entity_form][query][0][builder][groupId]"
  And I click on the button with label "Create ibe query"
  Then I can see "Test_Berlin_18/02-26/02_2A1C_Family"

  When I enter "Hotel name" in the field with name "field_headline_1[0][value]"
  And I enter "Destination" in the field with name "field_subtitle_1[0][value]"
  And I enter "Pack combination" in the field with name "field_teaser_text_1[0][value]"
  And I upload an image in the field with label Image
  And I enter "Image alt" in the field with name "field_image_1[0][alt]"

  And I click on the button with label Save

  Then the page title is Name 1/1 OnImage carré teaser - Scenario 2 | Luxairtours
  And I can see Hotel name
  And I can see Destination
  And I can see Pack combination
  And I can see a button with label apd 219€
  And the teaser large class is background:linear-gradient(rgba(31,22,0,0.15),rgba(31,22,0,0.15)), url(/sites/default/files/2016-11/dori2_1.jpg) center center no-repeat; background-size:cover;
  And the image alt property is Image alt

  When I click on the button with label apd 219€
  Then the page title is Luxair Tours IBE
  And I can see sam., 18.02.17 - dim., 26.02.16, 7 Nuits
  And I can see 2 Adultes, 1 Enfant
  And I can see Petit-déj
  And I can see Berlin Mark Hôtel

  @LGIT1.3.1.1.1 @LGIT1.3.1.1.2 @LGIT1.3.1.1.4.1.1
  Scenario Outline: Create a 1/1 OnImage carré teaser using default contents but redirecting to an internal node

  Given I have content editor right
  And I am on the teaser creation page for the teaser "1/1 OnImage carré teaser"
  When I enter "1/1 OnImage carré teaser - Scenario 3" in the field with name "name[0][value]"
  And I click on the button with label "Add new IBE query"
  Then the field with the label "IBE BUILDER" is present

  When I enter "Test_Berlin_18/02-26/02_2A1C_Family" in the field with name "name[0][value]"
  And I click on the button with label "IBE BUILDER"
  And I select "Bed & Breakfast" in the field with label "Hotel Board Type"
  And I enter "2" in the field with name "query[form][inline_entity_form][query][0][builder][adultsCount]"
  And I enter "1" in the field with name "query[form][inline_entity_form][query][0][builder][childrenCount]"
  And I enter "18/02/2017" in the field with name "query[form][inline_entity_form][query][0][builder][dateFrom]"
  And I enter "26/02/2017" in the field with name "query[form][inline_entity_form][query][0][builder][dateTo]"
  And I enter "7" in the field with name "query[form][inline_entity_form][query][0][builder][duration]"
  And I enter "1000" in the field with name "query[form][inline_entity_form][query][0][builder][treeId]"
  And I enter "301" in the field with name "query[form][inline_entity_form][query][0][builder][groupId]"
  And I click on the button with label "Create ibe query"
  Then I can see "Test_Berlin_18/02-26/02_2A1C_Family"

  When I enter <node_title> in the field with name "field_teaser_deeplink_1[0][uri]"
  And I click on the button with label Save

  Then the page title is Name 1/1 OnImage carré teaser - Scenario 3 | Luxairtours
  And I can see Berlin, Deutschland
  And I can see Berlin Mark Hôtel
  And I can see 7 jours, 2 adultes, 1 enfant, petit-déjeuner
  And I can see a button with label apd 219€
  And the teaser large class is background:linear-gradient(rgba(31,22,0,0.15),rgba(31,22,0,0.15)), url(https://i.giatamedia.com/s.php?uid=612&source=xmlpool2&size=074&cid=17764&file=cat017764_032_03.jpg&iid=30229706) center center no-repeat; background-size:cover;

  When I click on the button with label apd 219€
  Then the page title is <node_page_title>

  Examples:
  |node_title|node_page_title|
  |"Edu test"|"Edu test \| Luxairtours"|
  |"Majorque"|"Majorque \| Luxairtours"|
  |"Last-Minute"|"Last-Minute \| Luxairtours"|
  |"Page d'accueil"|"Page d'accueil \| Luxairtours"|