require 'game'

describe Game do 

  let(:game) { Game.new }
  let(:choices) { double :choices }

  it "should return a random choice" do 
    allow(choices).to receive(:sample).and_return("paper")
    expect(game.randomize).to eq "paper" 
  end

end