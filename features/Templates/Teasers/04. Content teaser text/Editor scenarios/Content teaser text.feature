Feature: Create a Content teaser text
  As a sales manager / content editor I want to advertise dedicated topics with this teaser using multiple design variations.

  Scenario: Create a small Content teaser text for Information node using default contents with style Background image & link as button with subtitle and default link
    Given I have content editor right
    And I am on the teaser creation page for the teaser "Content teaser text"
    When I enter "Content teaser text Scenario 1" in the field with name "name[0][value]"

    #Enter the Information node name
    And I enter "Edu Test (12)" in the field with name "field_node_source_1[0][target_id]"

    #Enter the subtitle
    And I enter "Subtitle" in the field with name "field_subtitle_1[0][value]"

    #Select the teaser style
    And I select the value Background image & link as button in the list with id edit-field-teaser-style

    #Select the teaser size
    And I select the value Small for the option list with name field_teaser_size

    #Save and check page
    And I click on the button with label Save
    Then the page title is Name Content teaser text Scenario 1 | Luxairtours

    #Check the default node content
    And I can see "Teaser title info 1 (DE)"
    And I can see "Teaser text  (FR)"
    And I can see "More info"

    #Check the subtitle
    And I can see "Subtitle"

    #Check the teaser style
    And I can see a button with value "More info"
    And the background image class is "teaser teaser--text teaser--textCenter teaser--whiteOnImage teaser--textSmall"

    #Check the default background image
    And I can see the image of "Edu Test"

    #Check the default link
    When I click on the button with label "More info"
    Then the page title is Edu Test | Luxairtours

  Scenario: Create a small Content teaser text for Information node using overwritten values with style Background image & link as text with subtitle and default link

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Content teaser text"
    When I enter "Content teaser text Scenario 2" in the field with name "name[0][value]"

    #Enter the Information node name
    And I enter "Edu Test (12)" in the field with name "field_node_source_1[0][target_id]"

    #Enter the subtitle
    And I enter "Subtitle" in the field with name "field_subtitle_1[0][value]"

    #Enter the overwritten values for the content
    And I enter "Headline" in the field with name "field_headline_1[0][value]"
    And I enter "Teaser Text" in the field with name "field_teaser_text_1[0][value]"

    #Select the teaser style
    And I select the value Background image & link as text in the list with id edit-field-teaser-style

    #Select the teaser size
    And I select the value Small for the option list with name field_teaser_size
    
    #Select the background image
    And I upload an image in the field with label "Teaser background Image"

    #Save and check page
    And I click on the button with label Save
    Then the page title is Name Content teaser text Scenario 2 | Luxairtours

    #Check the default node content
    And I can see "More info"

    #Check the overwritten values for the content
    And I can see "Headline"
    And I can see "Teaser Text"

    #Check the subtitle
    And I can see "Subtitle"

    #Check the teaser style
    And I can see a link with value "More info"
    And the background image class is "teaser teaser--text teaser--textCenter teaser--whiteOnImage teaser--textSmall"

    #Check the uploaded background image
    And I can see the image uploaded

    #Check the default link
    When I click on the button with label "More info"
    Then the page title is Edu Test | Luxairtours

  Scenario: Create a small Content teaser text for Deals node using default contents with style Background image + PDF file & link as button with subtitle and PDF and default link
    Given I have content editor right
    And I am on the teaser creation page for the teaser "Content teaser text"
    When I enter "Content teaser text Scenario 3" in the field with name "name[0][value]"

    #Enter the Information node name
    And I enter "Last-Minute (13)" in the field with name "field_node_source_1[0][target_id]"

    #Enter the subtitle
    And I enter "Subtitle" in the field with name "field_subtitle_1[0][value]"

    #Select the teaser style
    And I select the value Background image + PDF file & link as button in the list with id edit-field-teaser-style

    #Select the teaser size
    And I select the value Small for the option list with name field_teaser_size

    #Upload the PDF file
    And I upload a PDF file in the field with label "Teaser PDF file"
    And I enter "PDF file" in the field with name "field_teaser_link_text_1[0][value]"
    
    #Save and check page
    And I click on the button with label Save
    Then the page title is Name Content teaser text Scenario 3 | Luxairtours

    #Check the default node content
    And I can see "Offres last minute"
    And I can see "Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute,"
    And I can see "More info"

    #Check the subtitle
    And I can see "Subtitle"

    #Check the teaser style
    And I can see a button with value "PDF file"
    And the background image class is "teaser teaser--text teaser--textCenter teaser--whiteOnImage teaser--textSmall"

    #Check the default background image
    And I can see the image of "Last-Minute"

    #Check the PDF link with overwritten text
    When I click on the button with label "PDF file"
    Then the uploaded PDF file is loaded

  Scenario: Create a small Content teaser text for Deals node using overwritten values with style Background image + PDF file & link as text with subtitle and default link but no PDF
    Given I have content editor right
    And I am on the teaser creation page for the teaser "Content teaser text"
    When I enter "Content teaser text Scenario 4" in the field with name "name[0][value]"

    #Enter the Information node name
    And I enter "Last-Minute (13)" in the field with name "field_node_source_1[0][target_id]"

    #Enter the subtitle
    And I enter "Subtitle" in the field with name "field_subtitle_1[0][value]"

    #Enter the overwritten values for the content
    And I enter "Headline" in the field with name "field_headline_1[0][value]"
    And I enter "Teaser Text" in the field with name "field_teaser_text_1[0][value]"

    #Select the teaser style
    And I select the value Background image + PDF file & link as text in the list with id edit-field-teaser-style

    #Select the teaser size
    And I select the value Small for the option list with name field_teaser_size

    #Select the background image
    And I upload an image in the field with label "Teaser background Image"

    #Save and check page
    And I click on the button with label Save
    Then the page title is Name Content teaser text Scenario 4 | Luxairtours

    #Check the default node content
    And I can see "More info"

    #Check the overwritten values for the content
    And I can see "Headline"
    And I can see "Teaser Text"

    #Check the subtitle
    And I can see "Subtitle"

    #Check the teaser style
    And I can see a link with value "More info"
    And the background image class is "teaser teaser--text teaser--textCenter teaser--whiteOnImage teaser--textSmall"

    #Check the uploaded background image
    And I can see the image uploaded

    #Check the default link
    When I click on the button with label "More info"
    Then the page title is Last-Minute | Luxairtours

  Scenario: Create a small Content teaser text for Destination node using default contents with style Blue background & link as text with subtitle and default link

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Content teaser text"
    When I enter "Content teaser text Scenario 5" in the field with name "name[0][value]"

    #Enter the Information node name
    And I enter "Berlin (7)" in the field with name "field_node_source_1[0][target_id]"

    #Enter the subtitle
    And I enter "Subtitle" in the field with name "field_subtitle_1[0][value]"

    #Select the teaser style
    And I select the value Blue background & link as text in the list with id edit-field-teaser-style

    #Select the teaser size
    And I select the value Small for the option list with name field_teaser_size

    #Save and check page
    And I click on the button with label Save
    Then the page title is Name Content teaser text Scenario 5 | Luxairtours

    #Check the default node content
    And I can see "Berlin"
    And I can see "Berlin est la capitale et la plus grande ville d’Allemagne. Située dans le nord-est du pays, elle forme un land (État fédéré) à part entière et compte environ 3,5 millions d'habitants"
    And I can see "More info"

    #Check the subtitle
    And I can see "Subtitle"

    #Check the teaser style
    And I can see a link with value "More info"
    And the background image class is "teaser teaser--text teaser--textCenter teaser--whiteOnBlue teaser--textSmall"

    #Check the default link
    When I click on the button with label "More info"
    Then the page title is Berlin | Luxairtours

  Scenario: Create a small Content teaser text for Destination node using overwritten values with style Blue background + PDF file & link as text with subtitle and PDF and default link

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Content teaser text"
    When I enter "Content teaser text Scenario 6" in the field with name "name[0][value]"

    #Enter the Information node name
    And I enter "Berlin (7)" in the field with name "field_node_source_1[0][target_id]"

    #Enter the subtitle
    And I enter "Subtitle" in the field with name "field_subtitle_1[0][value]"

    #Enter the overwritten values for the content
    And I enter "Headline" in the field with name "field_headline_1[0][value]"
    And I enter "Teaser Text" in the field with name "field_teaser_text_1[0][value]"

    #Select the teaser style
    And I select the value Blue background + PDF file & link as text in the list with id edit-field-teaser-style

    #Select the teaser size
    And I select the value Small for the option list with name field_teaser_size

    #Upload the PDF file
    And I upload a PDF file in the field with label "Teaser PDF file"
    And I enter "PDF file" in the field with name "field_teaser_link_text_1[0][value]"

    #Save and check page
    And I click on the button with label Save
    Then the page title is Name Content teaser text Scenario 6 | Luxairtours

    #Check the default node content
    And I can see "Headline"
    And I can see "Teaser Text"
    And I can see "PDF file"

    #Check the subtitle
    And I can see "Subtitle"

    #Check the teaser style
    And I can see a link with value "More info"
    And the background image class is "teaser teaser--text teaser--textCenter teaser--whiteOnBlue teaser--textSmall"

    #Check the PDF link with overwritten text
    When I click on the button with label "PDF file"
    Then the uploaded PDF file is loaded

  Scenario: Create a small Content teaser text for Information node using default contents with style Yellow background & link as text with subtitle and default link

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Content teaser text"
    When I enter "Content teaser text Scenario 7" in the field with name "name[0][value]"

    #Enter the Information node name
    And I enter "Edu Test (12)" in the field with name "field_node_source_1[0][target_id]"

    #Enter the subtitle
    And I enter "Subtitle" in the field with name "field_subtitle_1[0][value]"

    #Select the teaser style
    And I select the value Yellow background & link as text in the list with id edit-field-teaser-style

    #Select the teaser size
    And I select the value Small for the option list with name field_teaser_size

    #Save and check page
    And I click on the button with label Save
    Then the page title is Name Content teaser text Scenario 7 | Luxairtours

    #Check the default node content
    And I can see "Teaser title info 1 (DE)"
    And I can see "Teaser text  (FR)"
    And I can see "More info"

    #Check the subtitle
    And I can see "Subtitle"

    #Check the teaser style
    And I can see a link with value "More info"
    And the background image class is "teaser teaser--text teaser--textCenter teaser--yellow teaser--textSmall"

    #Check the default link
    When I click on the button with label "More info"
    Then the page title is Edu Test | Luxairtours

  Scenario: Create a small Content teaser text for Deals node using default contents with style Yellow background + PDF file & link as text with subtitle but no PDF and an external link

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Content teaser text"
    When I enter "Content teaser text Scenario 8" in the field with name "name[0][value]"

    #Enter the Information node name
    And I enter "Last-Minute (13)" in the field with name "field_node_source_1[0][target_id]"

    #Enter the subtitle
    And I enter "Subtitle" in the field with name "field_subtitle_1[0][value]"

    #Select the teaser style
    And I select the value Yellow background + PDF file & link as text in the list with id edit-field-teaser-style

    #Select the teaser size
    And I select the value Small for the option list with name field_teaser_size

    #Overwrite the link
    And I enter "www.luxair.lu" in the field with name "field_teaser_deeplink_1[0][uri]"
    And I enter "External URL" in the field with name "field_teaser_link_text_1[0][value]"

    #Save and check page
    And I click on the button with label Save
    Then the page title is Name Content teaser text Scenario 8 | Luxairtours

    #Check the default node content
    And I can see "Offres last minute"
    And I can see "Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute,"
    And I can see "External URL"

    #Check the subtitle
    And I can see "Subtitle"

    #Check the teaser style
    And I can see a link with value "External URL"
    And the background image class is "teaser teaser--text teaser--textCenter teaser--yellow teaser--textSmall"

    #Check the PDF link with overwritten text
    When I click on the button with label "External URL"
    Then the page title is Billets pas chers Luxembourg pour Milan l Genève l Berlin l Vienne l Londres l Madrid avec Luxair

  Scenario: Create a small Content teaser text for Destination node using default contents with style Grey background & link as text with subtitle but link to Destination node

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Content teaser text"
    When I enter "Content teaser text Scenario 9" in the field with name "name[0][value]"

    #Enter the Information node name
    And I enter "Berlin (7)" in the field with name "field_node_source_1[0][target_id]"

    #Enter the subtitle
    And I enter "Subtitle" in the field with name "field_subtitle_1[0][value]"

    #Overwrite the link
    And I enter "Majorque (4)" in the field with name "field_teaser_deeplink_1[0][uri]"
    And I enter "Destination node" in the field with name "field_teaser_link_text_1[0][value]"

    #Select the teaser style
    And I select the value Grey background & link as text in the list with id edit-field-teaser-style

    #Select the teaser size
    And I select the value Small for the option list with name field_teaser_size

    #Save and check page
    And I click on the button with label Save
    Then the page title is Name Content teaser text Scenario 9 | Luxairtours

    #Check the default node content
    And I can see "Berlin"
    And I can see "Berlin est la capitale et la plus grande ville d’Allemagne. Située dans le nord-est du pays, elle forme un land (État fédéré) à part entière et compte environ 3,5 millions d'habitants"
    And I can see "Destination node"

    #Check the subtitle
    And I can see "Subtitle"

    #Check the teaser style
    And I can see a link with value "Destination node"
    And the background image class is "teaser teaser--text teaser--textCenter teaser--grey teaser--textSmall"

    #Check the default link
    When I click on the button with label "Destination node"
    Then the page title is Majorque | Luxairtours

  @LGIT1.3.4.1.10
  Scenario: Create a small Content teaser text for Information node using default contents with style Grey background + PDF file & link as text with subtitle and PDF but link to Deal node

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Content teaser text"
    When I enter "Content teaser text Scenario 10" in the field with name "name[0][value]"

    #Enter the Information node name
    And I enter "Edu Test (12)" in the field with name "field_node_source_1[0][target_id]"

    #Enter the subtitle
    And I enter "Subtitle" in the field with name "field_subtitle_1[0][value]"

    #Select the teaser style
    And I select the value Grey background + PDF file & link as text in the list with id edit-field-teaser-style

    #Select the teaser size
    And I select the value Small for the option list with name field_teaser_size

    #Overwrite the link
    And I enter "Last-Minute (13)" in the field with name "field_teaser_deeplink_1[0][uri]"
    And I enter "Deals node" in the field with name "field_teaser_link_text_1[0][value]"

    #Upload the PDF file
    And I upload a PDF file in the field with label "Teaser PDF file"
    And I enter "PDF file" in the field with name "field_teaser_link_text_1[0][value]"

    #Save and check page
    And I click on the button with label Save
    Then the page title is Name Content teaser text Scenario 10 | Luxairtours

    #Check the default node content
    And I can see "Teaser title info 1 (DE)"
    And I can see "Teaser text  (FR)"
    And I can see "Deals node"

    #Check the subtitle
    And I can see "Subtitle"

    #Check the teaser style
    And I can see a link with value "Deals node"
    And the background image class is "teaser teaser--text teaser--textCenter teaser--grey teaser--textSmall"

    #Check the PDF link with overwritten text
    When I click on the button with label "PDF link"
    Then the uploaded PDF file is loaded

  Scenario: Create a small Content teaser text for Deals node using default contents with style White background & link as text with subtitle but link to Overview node

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Content teaser text"
    When I enter "Content teaser text Scenario 11" in the field with name "name[0][value]"

    #Enter the Information node name
    And I enter "Last-Minute (13)" in the field with name "field_node_source_1[0][target_id]"

    #Enter the subtitle
    And I enter "Subtitle" in the field with name "field_subtitle_1[0][value]"

    #Overwrite the link
    And I enter "Page d'accueil (1)" in the field with name "field_teaser_deeplink_1[0][uri]"
    And I enter "Overview node" in the field with name "field_teaser_link_text_1[0][value]"

    #Select the teaser style
    And I select the value White background & link as text in the list with id edit-field-teaser-style

    #Select the teaser size
    And I select the value Small for the option list with name field_teaser_size

    #Save and check page
    And I click on the button with label Save
    Then the page title is Name Content teaser text Scenario 11 | Luxairtours

    #Check the default node content
    And I can see "Offres last minute"
    And I can see "Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute,"
    And I can see "Overview node"

    #Check the subtitle
    And I can see "Subtitle"

    #Check the teaser style
    And I can see a link with value "Overview node"
    And the background image class is "teaser teaser--text teaser--textCenter teaser--greyOnWhite teaser--textSmall"

    #Check the default link
    When I click on the button with label "Overview node"
    Then the page title is Page d'accueil | Luxairtours

  Scenario: Create a small Content teaser text for Destination node using default contents with style White background + PDF file & link as text with subtitle but no PDF and link to Information node

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Content teaser text"
    When I enter "Content teaser text Scenario 12" in the field with name "name[0][value]"

    #Enter the Information node name
    And I enter "Berlin (7)" in the field with name "field_node_source_1[0][target_id]"

    #Enter the subtitle
    And I enter "Subtitle" in the field with name "field_subtitle_1[0][value]"

    #Select the teaser style
    And I select the value White background + PDF file & link as text in the list with id edit-field-teaser-style

    #Select the teaser size
    And I select the value Small for the option list with name field_teaser_size

    #Overwrite the link
    And I enter "Edu Test (12)" in the field with name "field_teaser_deeplink_1[0][uri]"
    And I enter "Information node" in the field with name "field_teaser_link_text_1[0][value]"

    #Save and check page
    And I click on the button with label Save
    Then the page title is Name Content teaser text Scenario 12 | Luxairtours

    #Check the default node content
    And I can see "Berlin"
    And I can see "Berlin est la capitale et la plus grande ville d’Allemagne. Située dans le nord-est du pays, elle forme un land (État fédéré) à part entière et compte environ 3,5 millions d'habitants"
    And I can see "Information node"

    #Check the subtitle
    And I can see "Subtitle"

    #Check the teaser style
    And I can see a link with value "Information node"
    And the background image class is "teaser teaser--text teaser--textCenter teaser--greyOnWhite teaser--textSmall"

    #Check the PDF link with overwritten text
    When I click on the button with label "Information node"
    Then the page title is Edu Test | Luxairtours

  Scenario: Create a large Content teaser text for Information node using default contents with style Background image & link as button with subtitle and default link
    Given I have content editor right
    And I am on the teaser creation page for the teaser "Content teaser text"
    When I enter "Content teaser text Scenario 13" in the field with name "name[0][value]"

    #Enter the Information node name
    And I enter "Edu Test (12)" in the field with name "field_node_source_1[0][target_id]"

    #Enter the subtitle
    And I enter "Subtitle" in the field with name "field_subtitle_1[0][value]"

    #Select the teaser style
    And I select the value Background image & link as button in the list with id edit-field-teaser-style

    #Select the teaser size
    And I select the value Large for the option list with name field_teaser_size

    #Save and check page
    And I click on the button with label Save
    Then the page title is Name Content teaser text Scenario 13 | Luxairtours

    #Check the default node content
    And I can see "Teaser title info 1 (DE)"
    And I can see "Teaser text  (FR)"
    And I can see "More info"

    #Check the subtitle
    And I can see "Subtitle"

    #Check the teaser style
    And I can see a button with value "More info"
    And the background image class is "teaser teaser--text teaser--textCenter teaser--whiteOnImage teaser--textLarge"

    #Check the default background image
    And I can see the image of "Edu Test"

    #Check the default link
    When I click on the button with label "More info"
    Then the page title is Edu Test | Luxairtours

  Scenario: Create a large Content teaser text for Information node using overwritten values with style Background image & link as text with subtitle and default link

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Content teaser text"
    When I enter "Content teaser text Scenario 134" in the field with name "name[0][value]"

    #Enter the Information node name
    And I enter "Edu Test (12)" in the field with name "field_node_source_1[0][target_id]"

    #Enter the subtitle
    And I enter "Subtitle" in the field with name "field_subtitle_1[0][value]"

    #Enter the overwritten values for the content
    And I enter "Headline" in the field with name "field_headline_1[0][value]"
    And I enter "Teaser Text" in the field with name "field_teaser_text_1[0][value]"

    #Select the teaser style
    And I select the value Background image & link as text in the list with id edit-field-teaser-style

    #Select the teaser size
    And I select the value Large for the option list with name field_teaser_size

    #Select the background image
    And I upload an image in the field with label "Teaser background Image"

    #Save and check page
    And I click on the button with label Save
    Then the page title is Name Content teaser text Scenario 134 | Luxairtours

    #Check the default node content
    And I can see "More info"

    #Check the overwritten values for the content
    And I can see "Headline"
    And I can see "Teaser Text"

    #Check the subtitle
    And I can see "Subtitle"

    #Check the teaser style
    And I can see a link with value "More info"
    And the background image class is "teaser teaser--text teaser--textCenter teaser--whiteOnImage teaser--textLarge"

    #Check the uploaded background image
    And I can see the image uploaded

    #Check the default link
    When I click on the button with label "More info"
    Then the page title is Edu Test | Luxairtours

  Scenario: Create a large Content teaser text for Deals node using default contents with style Background image + PDF file & link as button with subtitle and PDF and default link
    Given I have content editor right
    And I am on the teaser creation page for the teaser "Content teaser text"
    When I enter "Content teaser text Scenario 135" in the field with name "name[0][value]"

    #Enter the Information node name
    And I enter "Last-Minute (13)" in the field with name "field_node_source_1[0][target_id]"

    #Enter the subtitle
    And I enter "Subtitle" in the field with name "field_subtitle_1[0][value]"

    #Select the teaser style
    And I select the value Background image + PDF file & link as button in the list with id edit-field-teaser-style

    #Select the teaser size
    And I select the value Large for the option list with name field_teaser_size

    #Upload the PDF file
    And I upload a PDF file in the field with label "Teaser PDF file"
    And I enter "PDF file" in the field with name "field_teaser_link_text_1[0][value]"

    #Save and check page
    And I click on the button with label Save
    Then the page title is Name Content teaser text Scenario 135 | Luxairtours

    #Check the default node content
    And I can see "Offres last minute"
    And I can see "Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute,"
    And I can see "More info"

    #Check the subtitle
    And I can see "Subtitle"

    #Check the teaser style
    And I can see a button with value "PDF file"
    And the background image class is "teaser teaser--text teaser--textCenter teaser--whiteOnImage teaser--textLarge"

    #Check the default background image
    And I can see the image of "Last-Minute"

    #Check the PDF link with overwritten text
    When I click on the button with label "PDF file"
    Then the uploaded PDF file is loaded

  Scenario: Create a large Content teaser text for Deals node using overwritten values with style Background image + PDF file & link as text with subtitle and default link but no PDF
    Given I have content editor right
    And I am on the teaser creation page for the teaser "Content teaser text"
    When I enter "Content teaser text Scenario 136" in the field with name "name[0][value]"

    #Enter the Information node name
    And I enter "Last-Minute (13)" in the field with name "field_node_source_1[0][target_id]"

    #Enter the subtitle
    And I enter "Subtitle" in the field with name "field_subtitle_1[0][value]"

    #Enter the overwritten values for the content
    And I enter "Headline" in the field with name "field_headline_1[0][value]"
    And I enter "Teaser Text" in the field with name "field_teaser_text_1[0][value]"

    #Select the teaser style
    And I select the value Background image + PDF file & link as text in the list with id edit-field-teaser-style

    #Select the teaser size
    And I select the value Large for the option list with name field_teaser_size

    #Select the background image
    And I upload an image in the field with label "Teaser background Image"

    #Save and check page
    And I click on the button with label Save
    Then the page title is Name Content teaser text Scenario 136 | Luxairtours

    #Check the default node content
    And I can see "More info"

    #Check the overwritten values for the content
    And I can see "Headline"
    And I can see "Teaser Text"

    #Check the subtitle
    And I can see "Subtitle"

    #Check the teaser style
    And I can see a link with value "More info"
    And the background image class is "teaser teaser--text teaser--textCenter teaser--whiteOnImage teaser--textLarge"

    #Check the uploaded background image
    And I can see the image uploaded

    #Check the default link
    When I click on the button with label "More info"
    Then the page title is Last-Minute | Luxairtours

  Scenario: Create a large Content teaser text for Destination node using default contents with style Blue background & link as text with subtitle and default link

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Content teaser text"
    When I enter "Content teaser text Scenario 137" in the field with name "name[0][value]"

    #Enter the Information node name
    And I enter "Berlin (7)" in the field with name "field_node_source_1[0][target_id]"

    #Enter the subtitle
    And I enter "Subtitle" in the field with name "field_subtitle_1[0][value]"

    #Select the teaser style
    And I select the value Blue background & link as text in the list with id edit-field-teaser-style

    #Select the teaser size
    And I select the value Large for the option list with name field_teaser_size

    #Save and check page
    And I click on the button with label Save
    Then the page title is Name Content teaser text Scenario 137 | Luxairtours

    #Check the default node content
    And I can see "Berlin"
    And I can see "Berlin est la capitale et la plus grande ville d’Allemagne. Située dans le nord-est du pays, elle forme un land (État fédéré) à part entière et compte environ 3,5 millions d'habitants"
    And I can see "More info"

    #Check the subtitle
    And I can see "Subtitle"

    #Check the teaser style
    And I can see a link with value "More info"
    And the background image class is "teaser teaser--text teaser--textCenter teaser--whiteOnBlue teaser--textLarge"

    #Check the default link
    When I click on the button with label "More info"
    Then the page title is Berlin | Luxairtours

  Scenario: Create a large Content teaser text for Destination node using overwritten values with style Blue background + PDF file & link as text with subtitle and PDF and default link

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Content teaser text"
    When I enter "Content teaser text Scenario 138" in the field with name "name[0][value]"

    #Enter the Information node name
    And I enter "Berlin (7)" in the field with name "field_node_source_1[0][target_id]"

    #Enter the subtitle
    And I enter "Subtitle" in the field with name "field_subtitle_1[0][value]"

    #Enter the overwritten values for the content
    And I enter "Headline" in the field with name "field_headline_1[0][value]"
    And I enter "Teaser Text" in the field with name "field_teaser_text_1[0][value]"

    #Select the teaser style
    And I select the value Blue background + PDF file & link as text in the list with id edit-field-teaser-style

    #Select the teaser size
    And I select the value Large for the option list with name field_teaser_size

    #Upload the PDF file
    And I upload a PDF file in the field with label "Teaser PDF file"
    And I enter "PDF file" in the field with name "field_teaser_link_text_1[0][value]"

    #Save and check page
    And I click on the button with label Save
    Then the page title is Name Content teaser text Scenario 138 | Luxairtours

    #Check the default node content
    And I can see "Headline"
    And I can see "Teaser Text"
    And I can see "PDF file"

    #Check the subtitle
    And I can see "Subtitle"

    #Check the teaser style
    And I can see a link with value "More info"
    And the background image class is "teaser teaser--text teaser--textCenter teaser--whiteOnBlue teaser--textLarge"

    #Check the PDF link with overwritten text
    When I click on the button with label "PDF file"
    Then the uploaded PDF file is loaded

  Scenario: Create a large Content teaser text for Information node using default contents with style Yellow background & link as text with subtitle and default link

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Content teaser text"
    When I enter "Content teaser text Scenario 139" in the field with name "name[0][value]"

    #Enter the Information node name
    And I enter "Edu Test (12)" in the field with name "field_node_source_1[0][target_id]"

    #Enter the subtitle
    And I enter "Subtitle" in the field with name "field_subtitle_1[0][value]"

    #Select the teaser style
    And I select the value Yellow background & link as text in the list with id edit-field-teaser-style

    #Select the teaser size
    And I select the value Large for the option list with name field_teaser_size

    #Save and check page
    And I click on the button with label Save
    Then the page title is Name Content teaser text Scenario 139 | Luxairtours

    #Check the default node content
    And I can see "Teaser title info 1 (DE)"
    And I can see "Teaser text  (FR)"
    And I can see "More info"

    #Check the subtitle
    And I can see "Subtitle"

    #Check the teaser style
    And I can see a link with value "More info"
    And the background image class is "teaser teaser--text teaser--textCenter teaser--yellow teaser--textLarge"

    #Check the default link
    When I click on the button with label "More info"
    Then the page title is Edu Test | Luxairtours

  Scenario: Create a large Content teaser text for Deals node using default contents with style Yellow background + PDF file & link as text with subtitle but no PDF and an external link

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Content teaser text"
    When I enter "Content teaser text Scenario 1340" in the field with name "name[0][value]"

    #Enter the Information node name
    And I enter "Last-Minute (13)" in the field with name "field_node_source_1[0][target_id]"

    #Enter the subtitle
    And I enter "Subtitle" in the field with name "field_subtitle_1[0][value]"

    #Select the teaser style
    And I select the value Yellow background + PDF file & link as text in the list with id edit-field-teaser-style

    #Select the teaser size
    And I select the value Large for the option list with name field_teaser_size

    #Overwrite the link
    And I enter "www.luxair.lu" in the field with name "field_teaser_deeplink_1[0][uri]"
    And I enter "External URL" in the field with name "field_teaser_link_text_1[0][value]"

    #Save and check page
    And I click on the button with label Save
    Then the page title is Name Content teaser text Scenario 1340 | Luxairtours

    #Check the default node content
    And I can see "Offres last minute"
    And I can see "Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute,"
    And I can see "External URL"

    #Check the subtitle
    And I can see "Subtitle"

    #Check the teaser style
    And I can see a link with value "External URL"
    And the background image class is "teaser teaser--text teaser--textCenter teaser--yellow teaser--textLarge"

    #Check the PDF link with overwritten text
    When I click on the button with label "External URL"
    Then the page title is Billets pas chers Luxembourg pour Milan l Genève l Berlin l Vienne l Londres l Madrid avec Luxair

  Scenario: Create a large Content teaser text for Destination node using default contents with style Grey background & link as text with subtitle but link to Destination node

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Content teaser text"
    When I enter "Content teaser text Scenario 1341" in the field with name "name[0][value]"

    #Enter the Information node name
    And I enter "Berlin (7)" in the field with name "field_node_source_1[0][target_id]"

    #Enter the subtitle
    And I enter "Subtitle" in the field with name "field_subtitle_1[0][value]"

    #Overwrite the link
    And I enter "Majorque (4)" in the field with name "field_teaser_deeplink_1[0][uri]"
    And I enter "Destination node" in the field with name "field_teaser_link_text_1[0][value]"

    #Select the teaser style
    And I select the value Grey background & link as text in the list with id edit-field-teaser-style

    #Select the teaser size
    And I select the value Large for the option list with name field_teaser_size

    #Save and check page
    And I click on the button with label Save
    Then the page title is Name Content teaser text Scenario 1341 | Luxairtours

    #Check the default node content
    And I can see "Berlin"
    And I can see "Berlin est la capitale et la plus grande ville d’Allemagne. Située dans le nord-est du pays, elle forme un land (État fédéré) à part entière et compte environ 3,5 millions d'habitants"
    And I can see "Destination node"

    #Check the subtitle
    And I can see "Subtitle"

    #Check the teaser style
    And I can see a link with value "Destination node"
    And the background image class is "teaser teaser--text teaser--textCenter teaser--grey teaser--textLarge"

    #Check the default link
    When I click on the button with label "Destination node"
    Then the page title is Majorque | Luxairtours

  @LGIT1.3.4.1.10
  Scenario: Create a large Content teaser text for Information node using default contents with style Grey background + PDF file & link as text with subtitle and PDF but link to Deal node

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Content teaser text"
    When I enter "Content teaser text Scenario 1342" in the field with name "name[0][value]"

    #Enter the Information node name
    And I enter "Edu Test (12)" in the field with name "field_node_source_1[0][target_id]"

    #Enter the subtitle
    And I enter "Subtitle" in the field with name "field_subtitle_1[0][value]"

    #Select the teaser style
    And I select the value Grey background + PDF file & link as text in the list with id edit-field-teaser-style

    #Select the teaser size
    And I select the value Large for the option list with name field_teaser_size

    #Overwrite the link
    And I enter "Last-Minute (13)" in the field with name "field_teaser_deeplink_1[0][uri]"
    And I enter "Deals node" in the field with name "field_teaser_link_text_1[0][value]"

    #Upload the PDF file
    And I upload a PDF file in the field with label "Teaser PDF file"
    And I enter "PDF file" in the field with name "field_teaser_link_text_1[0][value]"

    #Save and check page
    And I click on the button with label Save
    Then the page title is Name Content teaser text Scenario 1342 | Luxairtours

    #Check the default node content
    And I can see "Teaser title info 1 (DE)"
    And I can see "Teaser text  (FR)"
    And I can see "Deals node"

    #Check the subtitle
    And I can see "Subtitle"

    #Check the teaser style
    And I can see a link with value "Deals node"
    And the background image class is "teaser teaser--text teaser--textCenter teaser--grey teaser--textLarge"

    #Check the PDF link with overwritten text
    When I click on the button with label "PDF link"
    Then the uploaded PDF file is loaded

  Scenario: Create a large Content teaser text for Deals node using default contents with style White background & link as text with subtitle but link to Overview node

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Content teaser text"
    When I enter "Content teaser text Scenario 1343" in the field with name "name[0][value]"

    #Enter the Information node name
    And I enter "Last-Minute (13)" in the field with name "field_node_source_1[0][target_id]"

    #Enter the subtitle
    And I enter "Subtitle" in the field with name "field_subtitle_1[0][value]"

    #Overwrite the link
    And I enter "Page d'accueil (1)" in the field with name "field_teaser_deeplink_1[0][uri]"
    And I enter "Overview node" in the field with name "field_teaser_link_text_1[0][value]"

    #Select the teaser style
    And I select the value White background & link as text in the list with id edit-field-teaser-style

    #Select the teaser size
    And I select the value Large for the option list with name field_teaser_size

    #Save and check page
    And I click on the button with label Save
    Then the page title is Name Content teaser text Scenario 1343 | Luxairtours

    #Check the default node content
    And I can see "Offres last minute"
    And I can see "Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute, Notre offres last minute,"
    And I can see "Overview node"

    #Check the subtitle
    And I can see "Subtitle"

    #Check the teaser style
    And I can see a link with value "Overview node"
    And the background image class is "teaser teaser--text teaser--textCenter teaser--greyOnWhite teaser--textLarge"

    #Check the default link
    When I click on the button with label "Overview node"
    Then the page title is Page d'accueil | Luxairtours

  Scenario: Create a large Content teaser text for Destination node using default contents with style White background + PDF file & link as text with subtitle but no PDF and link to Information node

    Given I have content editor right
    And I am on the teaser creation page for the teaser "Content teaser text"
    When I enter "Content teaser text Scenario 1344" in the field with name "name[0][value]"

    #Enter the Information node name
    And I enter "Berlin (7)" in the field with name "field_node_source_1[0][target_id]"

    #Enter the subtitle
    And I enter "Subtitle" in the field with name "field_subtitle_1[0][value]"

    #Select the teaser style
    And I select the value White background + PDF file & link as text in the list with id edit-field-teaser-style

    #Select the teaser size
    And I select the value Large for the option list with name field_teaser_size

    #Overwrite the link
    And I enter "Edu Test (12)" in the field with name "field_teaser_deeplink_1[0][uri]"
    And I enter "Information node" in the field with name "field_teaser_link_text_1[0][value]"

    #Save and check page
    And I click on the button with label Save
    Then the page title is Name Content teaser text Scenario 1344 | Luxairtours

    #Check the default node content
    And I can see "Berlin"
    And I can see "Berlin est la capitale et la plus grande ville d’Allemagne. Située dans le nord-est du pays, elle forme un land (État fédéré) à part entière et compte environ 3,5 millions d'habitants"
    And I can see "Information node"

    #Check the subtitle
    And I can see "Subtitle"

    #Check the teaser style
    And I can see a link with value "Information node"
    And the background image class is "teaser teaser--text teaser--textCenter teaser--greyOnWhite teaser--textLarge"

    #Check the PDF link with overwritten text
    When I click on the button with label "Information node"
    Then the page title is Edu Test | Luxairtours