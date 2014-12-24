class Choice

  attr_reader :type

  def initialize(type = nil)
    @type = type
  end

  def objectify(input)
    return Rock.new if input == 'rock'
    return Paper.new if input == 'paper'
    return Scissors.new if input == 'scissors'
    return Spock.new if input == 'spock'
    return Lizard.new if input == 'lizard'
  end

end

class Rock < Choice
  def initialize
    super('rock')
  end

  def defeats(choice)
    choice.class == Scissors || choice.class == Lizard
  end
end

class Paper < Choice
  def initialize
    super('paper')
  end
  def defeats(choice)
    choice.class == Rock || choice.class == Spock
  end
end

class Scissors < Choice
  def initialize
    super('scissors')
  end
  def defeats(choice)
    choice.class == Paper || choice.class == Lizard
  end
end

class Spock < Choice
  def initialize
    super('Spock')
  end
  def defeats(choice)
    choice.class == Rock || choice.class == Scissors
  end
end

class Lizard < Choice
  def initialize
    super('lizard')
  end
  def defeats(choice)
    choice.class == Spock || choice.class == Paper
  end
end