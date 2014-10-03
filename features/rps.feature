Feature: I want to play Rock Paper Scissors!

Scenario: Player registration
  Given I am on the home page
  When I enter my name into a form
  Then I should see "Welcome!"