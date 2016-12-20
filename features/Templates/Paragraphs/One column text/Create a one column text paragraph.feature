Feature: Create a one column text paragraph

  Scenario Outline: Create a one column text paragraph

    Given I have content editor right
    When I create a content of type "Information"

    #Fill mandatory fields of content type "Information"
    And I enter "Test <paragraph_name> <id>" in the field with name "title[0][value]"
    And I enter "Test <paragraph_name> teaser title" in the field with name "field_teaser_title[0][value]"
    And I upload an image in the field with label Teaser title
    And I enter "Test <paragraph_name> teaser image alternative text " in the field with name "JDE's test teaser image alternative text"
    And I upload a svg image in the field with label Teaser Icon
    And I enter "Test <paragraph_name> teaser text" in the text area with name "field_teaser_text[0][value]"
    And I enter "Test <paragraph_name> menu teaser" in the field with name "field_menu_teaser_title[0][value]"
    And I enter "Test <paragraph_name> menu teaser text" in the text area with name "field_menu_teaser_text[0][value]"

    #Add the paragraph
    And I click on the button with class "dropbutton-arrow"
    And I click on the button with label Ajouter <paragraph_name>

    #Check paragraph parameters
    Then the field label "Text" is visible
    And the field with name "field_paragraph_content[1][subform][field_text][0][value]" is visible

    #Enter values in paragraph parameters
    When I select "<paragraph_text_style>" as text area style
    And I enter "Test <paragraph_name> text" in the field with name "field_paragraph_content[1][subform][field_text][0][value]"
    
    #Save the content
    And I click on the button with label Enregistrer

    #Check the content
    Then I can see Test <paragraph_name> text
    And the text "Test <paragraph_name> text" is centered
    And the text "Test <paragraph_name> text" is in style "paragraph_text_style"

  Examples:
    |id|paragraph_name|paragraph_text_style|
    |1 |One column text|Titre 1            |
    |2 |One column text|Titre 3            |
    |3 |One column text|Normal             |

  Scenario Outline: Edit one column text paragraph

    Given I am on the "<content_type_name>" page named "Test <paragraph_name> <id>"
    #Open paragraph edition mode
    When I click on the button with label Edit

    #Check the paragraph edition mode
    Then the field label "Text" is visible
    And the field with name "field_paragraph_content[1][subform][field_text][0][value]" is visible
    And I can see Test <paragraph_name> text

    #Edit the paragraph
    When I select "<paragraph_text_style>" as text area style
    And I enter "Test <paragraph_name> updated" in the field with name "field_paragraph_content[1][subform][field_text][0][value]"

    #Save the content
    And I click on the button with label Enregistrer

    #Check the content
    Then I can see Test <paragraph_name> updated
    And the text "Test <paragraph_name> text" is centered
    And the text "Test <paragraph_name> text" is in style "paragraph_text_style"

    Examples:
    |id|content_type_name|paragraph_name |paragraph_text_style|
    |1 |Information      |One column text|Titre 3             |

  Scenario Outline: Remove one column text paragraph

    Given I am on the "<content_type_name>" page named "Test <paragraph_name> 1"
    And I can see Type: <paragraph_name>

    #Remove the paragraph
    When I click on the button with class "dropbutton-arrow"
    And I click on the button with label Retirer

    #Check the first step of paragraph removal
    Then I can see Deleted Paragraph: <paragraph_name>
    And the button with value "Confirm removal" is present

    #Confirm paragraph removal
    When I click on the button with label Confirm removal
    Then I cannot see Type: <paragraph_name>

    #Save the content
    When I click on the button with label Enregistrer
    Then I can see Cette valeur ne peut pas être nulle.

  Examples:
    |paragraph_name |
    |One column text|

