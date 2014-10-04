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

Then(/^I should see two options to play against the computer or my friend$/) do
  pending # express the regexp above with the code you wish you had
end



Given(/^I chose to play against the computer$/) do
  pending # express the regexp above with the code you wish you had
end


When(/^I choose Rock$/) do
  choose('rock')
  click_button('Go!')
  expect(current_path).to eq('/game')
end

When(/^the computer chooses Scissors$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should know that I won$/) do
  expect(page).to have_content "You have won!"
end



Given(/^I chose to play against my friend$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I choose Paper$/) do
  choose('paper')
  click_button('Go!')
  expect(current_path).to eq('/game')
end

When(/^my friend chooses Rock$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I know that I am the winner$/) do
  pending # express the regexp above with the code you wish you had
end
