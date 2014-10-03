Feature: I want to play Rock Paper Scissors!

Scenario: Player registration
  Given I am on the home page
  When I enter my name into a form
  Then I should see "Welcome!"

Scenario: Starting the game
  Given I am registered
  When I click "Let's play"
  Then I should be on the game page

Scenario: Playing the game
  Given I am on the game page
  When I choose Rock
  And my opponent chooses Scissors
  Then I should know that I won

