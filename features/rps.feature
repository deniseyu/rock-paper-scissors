Feature: I want to play Rock Paper Scissors!

Scenario: Starting a new game
  Given I am on the home page
  When I fill in my name and click 'Submit'
  Then I should see a welcome message

Scenario: Starting a game against the computer
  Given I have signed in
  When I click 'Play Against Computer'
  Then I should be prompted to choose Rock, Paper, Scissors, Lizard, or Spock
  And my score should initially be set to 0

Scenario: Beating the computer
  Given I have signed in and chosen to play the computer
  When I choose Rock and the computer chooses Lizard
  Then I should see a victory message
  And my score should increase by one