require_relative '../support/helper/mypost_helper'

include MyPostHelper

Given(/^I am on the login site$/) do
  @login_page = LoginPage.new(@browser)
  visit(LoginPage)
end

Given(/^I´m logged in$/) do
  @main_page = LoginPage.new(@browser)
  visit_page_and_wait_for 'LoginPage', on(LoginPage).login_element

  # TODO
  # puts 'changing language'
  # change_language 'LoginPage', 'EN'

  login
end

When(/^I go to the site main page$/) do
  visit(MainPage)
  sleep 10
end

When(/^I go to login page$/) do
  visit(LoginPage)

end


When(/^I login using valid credentials$/) do
  login
end

When(/^I login$/) do
  login
end

When(/^I click on the submit button of the login form$/) do
  login
end

When(/^I login using a (.*) user and a (.*) password$/) do |user_identification, password|
  case user_identification
    when 'incorrect'
      usr = FigNewton.username + '_no_valid_username'
    when 'correct'
      usr = FigNewton.username
    when 'empty'
      usr = ''
    else
      usr = user_identification
  end

  case password
    when 'incorrect'
      pwd = FigNewton.password + 'foo'
    when 'correct'
      pwd = FigNewton.password
    when 'empty'
      pwd =''
    when 'something'
      pwd = FigNewton.password + 'bar'
    else
      pwd = password
  end

  visit(LoginPage).login_with usr, pwd
end

Then(/^I can see (.*)$/) do |text|
  fail unless @browser.text.include? text
end

Then(/^I can access all the functionalities$/) do
  fail unless @browser.text.include? FigNewton.username
end

Then(/^I see an error message$/) do
  # TODO implement proper wait
  # wait_on_for 'LoginPage', on(LoginPage).logininvalid_element
  # sleep 10

  fail unless @browser.text.include? 'Utilisateur ou mot de passe invalide'
end

Then(/^I see the balance labelled (.*)$/) do |balance_label|
  fail unless @browser.text.include? balance_label
end