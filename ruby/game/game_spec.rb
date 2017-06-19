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

  it "returns a true if character is in progress of guessed array" do
    new_game.progress_of_guessed_phrase << 'g'
    expect(new_game.duplicate_guess('g')).to eq(true)
  end

  it "returns a true if character is in wrong guesses array" do
    new_game.wrong_guesses << 'g'
    expect(new_game.duplicate_guess('g')).to eq(true)
  end

  it "returns a false if character is not in wrong guesses or progress of guessed array" do
    expect(new_game.duplicate_guess('g')).to eq(false)
  end

  it "sets the display to an empty array of underscore characters" do
    array = ["_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_"]
    new_game.set_guessing_phrase_display
    expect(new_game.progress_of_guessed_phrase).to match_array(array)
  end

  it "inserts a character in progress_of_guessed_phrase array" do
    new_game.set_guessing_phrase_display
    new_game.update_guessing_phrase('g')
    expect(new_game.progress_of_guessed_phrase.count('g')).to eq(2)
  end

end