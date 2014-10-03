Feature: I want to play Rock Paper Scissors!

Scenario: Player registration
  Given I am on the home page
  When I enter my name into a form
  Then I should see "Welcome!"

Scenario: Starting the game
  Given I am registered
  When I click "Let's play"
  Then I should be on the game page

Scenario: Picking an option
  Given I am on the game page
  When I choose Rock
  Then I should know what my opponent chose

Scenario: Learning the outcome
  Given I have chosen an option
  When I see my opponent's choice
  Then I should know if I won or lose


