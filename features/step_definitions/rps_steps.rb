Given(/^I am on the home page$/) do
  visit '/'
end

When(/^I enter my name into a form$/) do
  fill_in :name, :with => "Denise"
  click_button('Submit')
end

Then(/^I should see "(.*?)"$/) do |welcomemessage|
  expect(page).to have_content "Welcome, Denise!"
end



Given(/^I am registered$/) do
  visit '/'
  fill_in :name, :with => "Denise"
  click_button('Submit')
end

When(/^I click "(.*?)"$/) do |game_link|
  click_link "Let's play"
end

Then(/^I should be on the game page$/) do
  visit '/game'
end



Given(/^I am on the game page$/) do
  visit '/'
  fill_in :name, :with => "Denise"
  click_button('Submit')
  click_link "Let's play"
  visit '/game'
end

When(/^I choose Rock$/) do
  click('rock')
end

Then(/^I should know what my opponent chose$/) do
  expect(page).to have_content "You chose rock! The computer chose"
end



Given(/^I have chosen an option$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I see my opponent's choice$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should know if I won or lose$/) do
  pending # express the regexp above with the code you wish you had
end
