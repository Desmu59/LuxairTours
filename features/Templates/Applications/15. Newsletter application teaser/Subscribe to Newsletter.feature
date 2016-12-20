Feature: Redirection to Newsletter application

  Scenario Outline: Redirect to Newsletter application when email address is valid

    Given I am on the page "<page_name>" of type "<page_type>"

    And the current language of the website is <language>

    And I enter <email_value> in the field with name <email_field_name>

    Then the text <message_value> is present

    Examples:

      |page_name|page_type|language|email_value|email_field_name|message_value|

      |"Application Newsletter teaser"|"Information"|"Français"|"julien.desmulier@q-leap.eu"|""|""|

      |"Application Newsletter teaser"|"Information"|"Deutsch"|"julien.desmulier@q-leap.eu"|""|""|