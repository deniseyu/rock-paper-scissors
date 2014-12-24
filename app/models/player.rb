class Player

  attr_reader :name
  attr_accessor :score, :choice

  def initialize(name = 'Anonymous Player')
    @name = name
    @score = 0
    @choice = nil
  end

  def choose(choice)
    @choice = choice
  end

end