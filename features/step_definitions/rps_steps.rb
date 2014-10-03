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
