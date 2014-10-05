class Game

  attr_accessor :choices

  def initialize
    @choices = ["rock", "paper", "scissors", "lizard", "spock"]
  end

  def randomize
    @choices.sample
  end

  def outcome(choice_one, choice_two)

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

    if choice_one == choice_two
      "tie"
    elsif winning_hash[choice_one] == choice_two
      "win"
    else
      "lose"
    end

  end

end