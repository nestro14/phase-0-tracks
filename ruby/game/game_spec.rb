require_relative 'Game'

describe 'Game' do
  let(:new_game) {Game.new("programming")}

  it "returns the initailzed string in phrase" do
    expect(new_game.phrase).to eq("programming")
  end

  it "returns a guess limit of 7" do
    expect(new_game.calculate_guess_limit).to eq(7)
  end

  it "returns a true if character is in phrase" do
    expect(new_game.char_in_phrase('g')).to eq(true)
  end

  it "returns a false if character is not in phrase" do
    expect(new_game.char_in_phrase('c')).to eq(false)
  end

end