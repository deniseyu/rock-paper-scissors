class Game

  attr_accessor :choices

  def initialize
    @choices = ["rock", "paper", "scissors"]
  end

  def randomize
    @choices.sample
  end

  def outcome(player_choice, game_choice)

    winning_hash = {
      "paper" => "rock",
      "rock" => "scissors",
      "scissors" => "paper" }

    if player_choice == game_choice
      "tie"
    elsif winning_hash[player_choice] == game_choice
      "win"
    else
      "lose"
    end

  end

end