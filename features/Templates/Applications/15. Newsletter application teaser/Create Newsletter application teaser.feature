Feature: Create a Application Newsletter teaser

  Scenario Outline: Create a Application Newsletter teaser on an Information page

    Given I have content editor right
    And I am on the Information creation page
    And the current language of the website is <language>

    #Fill the node creation page
    When I enter "<application_name>" in the field with name "title[0][value]"
    And I enter "<application_name>" in the field with name "field_teaser_title[0][value]"
    And I upload an image in the field with label "Teaser Image"
    And I enter "<application_name>" in the field with name "field_teaser_image[0][alt]"
    And I upload an image in the field with label "Teaser Icon"
    And I enter "<application_name>" in the area described by "cke_31"
    And I enter "<application_name>" in the field with name "field_menu_teaser_title[0][value]"
    And I enter "<application_name>" in the area described by "cke_56"

    #Set Paragraph-content
    And I click on the button with class "dropbutton-arrow"
    And I click on the button with label Add Application teaser
    And I select "<application_name>" in the field with name "field_paragraph_content[3][subform][field_teaser][actions][bundle]"
    And I click on the button with label Add new teaser
    #Add steps of fields to fill for this teaser creation
    And I click on the button with label Create teaser

    #Save the node page
    And I click on the button with label Save
    Then the page title is <application_name> | Luxairtours

    #Check the application visibility on the page
    And I can see "<teaser_title>"
    And I can see "<teaser_text>"
    #Set the name of the email field
    And the field "" is present
    And the button with value ">" is present

    Examples:
    |language|application_name|teaser_title|teaser_text|
    |"Français"|"Application Newsletter teaser"|"Newsletter"|""|
    |"Deutsch" |"Application Newsletter teaser"|"Newsletter"|""|


