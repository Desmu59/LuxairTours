def adminrights
  visit(LoginPage)
  @browser.text_field(:id=>'edit-name').set('julien.desmulier')
  @browser.text_field(:id=>'edit-pass').set('drupal8')
  @browser.button(:value=>'Se connecter').click
  fail unless @browser.text.include? 'Member for'
end

And(/^I click on the button with label "([^"]*)"$/) do |arg|
  browser.button(:name=>arg).click
end

And(/^I enter "([^"]*)" in the field with id "([^"]*)"$/) do |arg1, arg2|
  @browser.text_field(:id=>arg2).set(arg1)
end

And(/^I enter "([^"]*)" in the field with name "([^"]*)"$/) do |arg1, arg2|
  @browser.text_field(:name=>arg2).set(arg1)
end

And(/^I select "([^"]*)" in the field with label "([^"]*)"$/) do |arg1, arg2|
  @browser.select_list(:name=>arg2).select(arg1)
end


And(/^I click on the button with label ([^"]*)$/) do |arg|
  @browser.button(:value=>arg).click
end

And(/^I click on the summary with text "([^"]*)"$/) do |arg|
  @browser.summary(:text=>arg).click
end

Given(/^I have content editor right$/) do
  adminrights
end

And(/^I select the value ([^"]*) in the list with id ([^"]*)$/) do |arg1, arg2|
  @browser.select_list(:id=>arg2).select(arg1)
end

Then(/^the page title is ([^"]*)$/) do |arg|
  @browser.title.should == arg
  sleep 5
end


When(/^I am on the teaser creation page for the teaser$/) do
  @browser.goto 'https://www-acc2.luxairtours.lu/fr/admin/content/teaser/add/1_3_2_3_double_single_offers'
end

And(/^I am on the teaser creation page for the teaser "([^"]*)"$/) do |arg|
  @browser.goto 'https://www-acc2.luxairtours.lu/fr/admin/structure/teaser/add'
  @browser.link(:text => /#{arg}/).click
end

And(/^the text "([^"]*)" is present$/) do |arg|
  text = arg
  text.encoding
  text.force_encoding 'utf-8'
  fail unless @browser.text.include? text
end

And(/^I am on the Information creation page$/) do
  @browser.goto 'https://www-acc2.luxairtours.lu/fr/node/add/information'
end

And(/^I am on the Destination creation page$/) do
  @browser.goto 'https://www-acc2.luxairtours.lu/fr/node/add/destination'
end

And(/^I am on the Deals creation page$/) do
  @browser.goto 'https://www-acc2.luxairtours.lu/fr/node/add/offer'
end


And(/^the current language of the website is (.*)$/) do |language|
  if language == 'Français'
    @browser.goto 'https://www-acc2.luxairtours.lu/fr'
  else
    @browser.goto 'https://www-acc2.luxairtours.lu/de'
  end
end

Then(/^the page title is (.*)$/) do |node_page_title|
  @browser.title.should == node_page_title
end