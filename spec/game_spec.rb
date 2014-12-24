require './app/models/game'
require './app/models/choice'
require './app/models/player'

describe Game do

  let(:game) { Game.new }
  let(:rock) { Rock.new }
  let(:scissors) { Scissors.new }
  let(:paper) { Paper.new }
  let(:spock) { Spock.new }
  let(:lizard) { Lizard.new }
  let(:player_one) { Player.new }

  it 'should adjudicate a draw' do
    expect(game.adjudicate(rock, rock)).to eq 'Draw'
  end

  it 'should adjudicate a win for Player One' do
    expect(game.adjudicate(spock, scissors)).to eq 'Player One wins!'
  end

  it 'should adjudicate a loss for Player One' do
    expect(game.adjudicate(scissors, rock)).to eq 'Player Two wins!'
  end

  it 'can award a point to a player' do
    game.award_point(player_one)
    expect(player_one.score).to eq 1
  end

  it 'can randomly select a choice in vs computer mode' do
    allow(game.choices).to receive(:sample).and_return(Rock.new)
    expect(game.choose_random.class).to eq Rock
  end

end