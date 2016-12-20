require_relative '../support/helper/mypost_helper'

include MyPostHelper



Then(/^menu is there$/) do
  # TODO get the selected language and change the assumtions accordingly
  on(MainPage).my_usage_element.text == 'MA CONSOMMATION'
  on(MainPage).options_element.text == 'OPTIONS À LA CARTE'
end

# TODO fix
#  Scenario: Check my number
#    Then my mobile number is displayed correctly
Then(/^my mobile number is displayed correctly$/) do
  puts on(MainPage).phone_number
  on(MainPage).phone_number.should == FigNewton.phone_number
end

When(/^I select the calls to\/in Europe (.*) option$/) do |minutes|
  visit(OptionsPage)

  case minutes
    when '30'
      on(OptionsPage).calls_europe_30_element.click
  end
end

And(/^I cancel it$/) do
  on(OptionsPage).wait_until(15, "Call not returned within 15 seconds") do
      on(OptionsPage).cancel_element.when_visible
    end

  on(OptionsPage).cancel
end

Then(/^nothing is added to my contract$/) do
  puts ''
end