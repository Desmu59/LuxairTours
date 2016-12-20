Feature: Can't redirect to Newsletter page

Scenario Outline: Can't redirect to Newsletter page if something else than an email is set in the email field

Given I am on the page "<page_name>" of type "<page_type>"

And the current language of the website is <language>

And I enter <email_value> in the field with name <email_field_name>

Then the text <message_value> is present

Examples:

|page_name|page_type|language|email_value|email_field_name|message_value|

|"Application Newsletter teaser"|"Information"|"Francais"|""|""|""|
|"Application Newsletter teaser"|"Information"|"Français"|"123"|""|""|
|"Application Newsletter teaser"|"Information"|"Francais"|"julien.desmulier-lea"|""|""|
|"Application Newsletter teaser"|"Information"|"Francais"|"julien.desmulier-lea@gmailcom"|""|""|

|"Application Newsletter teaser"|"Information"|"Deutsch"|""|""|""|
|"Application Newsletter teaser"|"Information"|"Deutsch"|"123"|""|""|
|"Application Newsletter teaser"|"Information"|"Deutsch"|"julien.desmulier-lea"|""|""|
|"Application Newsletter teaser"|"Information"|"Deutsch"|"julien.desmulier-lea@gmailcom"|""|""|