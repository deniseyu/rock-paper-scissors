require './app/models/choice'

describe 'Choice' do

  context 'defeats' do

    let(:rock) { Rock.new }
    let(:paper) { Paper.new }
    let(:scissors) { Scissors.new }
    let(:spock) { Spock.new }
    let(:lizard) { Lizard.new }

    it 'rock defeats scissors' do
      expect(rock.defeats(scissors)).to be true
    end

    it 'rock defeats lizard' do
      expect(rock.defeats(lizard)).to be true
    end

    it 'paper defeats rock' do
      expect(paper.defeats(rock)).to be true
    end

    it 'paper defeats spock' do
      expect(paper.defeats(spock)).to be true
    end

    it 'scissors defeats paper' do
      expect(scissors.defeats(paper)).to be true
    end

    it 'scissors defeats lizard' do
      expect(scissors.defeats(lizard)).to be true
    end

    it 'spock defeats rock' do
      expect(spock.defeats(rock)).to be true
    end

    it 'spock defeats scissors' do
      expect(spock.defeats(scissors)).to be true
    end

    it 'lizard defeats spock' do
      expect(lizard.defeats(spock)).to be true
    end

    it 'lizard defeats paper' do
      expect(lizard.defeats(paper)).to be true
    end

  end

  it 'can objectify itself based on a string input' do
    choice = Choice.new
    expect(choice.objectify('rock').class).to eq Rock
  end

end