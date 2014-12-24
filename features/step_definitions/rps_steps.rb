Given(/^I am on the home page$/) do
  visit '/'
end

When(/^I fill in my name and click 'Submit'$/) do
  fill_in 'name', :with => 'Denise'
  click_button 'Submit'
end

Then(/^I should see a welcome message$/) do
  expect(page).to have_content 'Welcome, Denise! Would you like to play against the computer or against a friend?'
end

Given(/^I have signed in$/) do
  visit '/'
  fill_in 'name', :with => 'Denise'
  click_button 'Submit'
end

When(/^I click 'Play Against Computer'$/) do
  click_link 'Play Against Computer'
end

Then(/^I should be prompted to choose Rock, Paper, Scissors, Lizard, or Spock$/) do
  expect(page).to have_content 'Make your selection!'
end

Then(/^my score should initially be set to (\d+)$/) do |arg1|
  expect(page).to have_content "Your current score: 0"
end

# Given(/^I have signed in and chosen to play the computer$/) do
#   visit '/'
#   fill_in 'name', :with => 'Denise'
#   click_button 'Submit'
#   click_link 'Play Against Computer'
# end

# When(/^I choose Rock and the computer chooses Lizard$/) do
#   select 'rock'
#   click_button 'Play!'
# end

# Then(/^I should see a victory message$/) do
#   expect(page).to have_content('Player One wins!')
# end

# Then(/^my score should increase by one$/) do
#   expect(page).to have_content('Your current score: 1')
# end

