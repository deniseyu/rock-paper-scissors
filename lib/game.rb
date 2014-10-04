class Game

  attr_accessor :choices

  def initialize
    @choices = ["rock", "paper", "scissors", "lizard", "spock"]
  end

  def randomize
    @choices.sample
  end

  def outcome(player_choice, game_choice)

    winning_hash = {
      "paper" => "rock",
      "paper" => "spock",
      "rock" => "scissors",
      "rock" => "lizard",
      "scissors" => "paper", 
      "scissors" => "lizard",
      "lizard" => "paper", 
      "lizard" => "spock", 
      "spock" => "scissors", 
      "spock" => "rock"
      }

    if player_choice == game_choice
      "tie"
    elsif winning_hash[player_choice] == game_choice
      "win"
    else
      "lose"
    end

  end

end