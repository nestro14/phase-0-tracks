require_relative 'Game'

describe 'Game' do
  let(:new_game) {Game.new("programming")}

  it "returns the initailzed string in phrase" do
    expect(new_game.phrase).to eq("programming")
  end
end