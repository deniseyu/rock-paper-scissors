require 'player'

describe Player do 

  it "should be able to have a name" do
    D = Player.new("Denise")
    expect(D.name).to eq "Denise"
  end

end