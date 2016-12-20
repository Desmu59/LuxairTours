require_relative '../support/helper/mypost_helper'

include MyPostHelper

When(/^I change the language to (.*)$/) do |choosen_language|

  on(LoginPage).language_dropdown_element.click

  case choosen_language
    when 'FR'
      change_language 'LoginPage', 'FR'
    when 'EN'
      change_language 'LoginPage', 'EN'
    when 'DE'
      change_language 'LoginPage', 'DE'
  end

end

Then(/^the language is changed to (.*)$/) do |target_language|

  case target_language
    when 'french'
      verify_language 'LoginPage', 'Mot de passe oublié?'
    when 'english'
      verify_language 'LoginPage', 'Forgot your password?'
    when 'german'
      verify_language 'LoginPage', 'Passwort vergessen?'
  end

end