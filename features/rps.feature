Feature: I want to play Rock Paper Scissors!

Scenario: One- or two-player mode
  Given I am on the home page
  Then I should be able to choose one or two player mode
  
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
  Then I should see options to play against the computer or a friend

Scenario: Playing Vs Computer
  Given I chose to play against the computer
  When I choose Rock
  And the computer chooses Scissors
  Then I should know that I won

Scenario: Playing Vs Friend
  Given I chose to play against my friend
  When I choose Paper
  And my friend chooses Rock
  Then I know that I am the winner 



