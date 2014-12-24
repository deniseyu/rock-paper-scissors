require_relative 'choice'

class Game

  attr_reader :choices

  def initialize
    @choices = [Rock.new, Paper.new, Scissors.new, Spock.new, Lizard.new]
  end

  def adjudicate(choice_one, choice_two)
    if choice_one.class == choice_two.class
      'Draw!'
    elsif choice_one.defeats(choice_two)
      'Player One wins!'
    else
      'Player Two wins!'
    end
  end

  def award_point(player)
    player.score += 1
  end

  def choose_random
    return @choices.sample
  end

  def outcome_vs_computer(input)
    return 'You win!' if input == 'Player One wins!'
    return 'Computer wins!' if input == 'Player Two wins!'
    return 'Draw!' if input == 'Draw!'
  end

end