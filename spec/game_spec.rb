require 'game'
require 'choices'

describe Game do 

  let(:game) { Game.new }
  let(:choices) { double :choices }

  it "should return a choice out of the Choices class" do 
    allow(choices).to receive(:sample).and_return("paper")
    expect(game.randomize(choices)).to eq "paper" 
  end

end