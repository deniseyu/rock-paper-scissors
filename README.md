# Rock, Paper, Scissors, Lizard, Spock in Ruby-Sinatra

Weekend Challenge: Week 3

## Task

Your task is to provide a Rock Paper Scissors game. The game must have the following features:

1. The marketeer has to enter their name before the game
2. The marketeer will be presented with the choices (rock, paper, scissors)
3. The marketeer will choose one option
4. The game will choose a random option
5. A winner will be declared

Bonus 1: Multiplayer

Change the game so two marketeers can play against each other.

Bonus 2: Use the special rules for Rock-Paper-Scissors-Lizard-Spock.

## To Use

Clone the repository:
```
git clone git@github.com:deniseyu/rock-paper-scissors.git
cd rock-paper-scissors
```
Install dependencies and start server:
```
bundle install
rackup
```

For unit tests, run 'rspec' from the command line. For features tests, run 'cucumber' from the command line.

## Technologies

* Ruby
* Sinatra
* RSpec
* Capybara
* Cucumber
* HTML5
* CSS3

## Learning Objectives

* Behavior-driven development with Cucumber
* Integration testing with Capybara
* Unit testing with RSpec
* User interface and front-end design
* Model-View-Controller
* No putting logic in the views!

## To Do

* Implement two-player mode with sessions
* Error handling with Rack flash
