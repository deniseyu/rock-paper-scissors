require './app/models/player'

describe Player do

  let(:player) { Player.new }

  it 'if no name is given, is named Anonymous Player' do
    expect(player.name).to eq 'Anonymous Player'
  end

  it 'should be able to have a name' do
    D = Player.new("Denise")
    expect(D.name).to eq "Denise"
  end

  it 'should begin with a score of 0' do
    expect(player.score).to eq 0
  end

  it 'can select a choice' do
    player.choose('Rock')
    expect(player.choice).to eq 'Rock'
  end

end