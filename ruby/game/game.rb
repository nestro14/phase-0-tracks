# Pseudocode
# Define class name: GuessPhrase
# Define class instance variables for guess_count, phrase, game_over?, and progress_of_guessed_phrase, guess_limit
# Define methods:
#   - initailize method
#   - update_phrase() => returns updated phrase based on user input
#   - char_in_pharse?() => returns true if char is in phrase
#   - display_result_message() => return winning/losing message
#   - display_wrong_guess_count => displays wrong guess count
#   - calculate_guess_limit => return guess lime fo 7 if phrase is <= 12 and 12 if guess limit is > 12
# Prompt 1 user for phrase
# Loop until game is over
#   -Prompt another user to guess phrase buy entering 1 character
#   -display update phrase and wrong guess count
# diplay game result

class Game
  attr_accessor :guess_count, :phrase, :game_over, :progress_of_guessed_phrase, :guess_limit

  def initialize(phrase)
    @phrase = phrase
    @guess_count = 0
    @game_over = nil
    @progress_of_guessed_phrase = []
    guess_limit = 0
  end

  def update_phrase
    # code goes here
  end

  def char_in_phrase(char)
    @phrase.include?(char)
  end

  def display_wrong_guess_count
    # code goes here
  end

  def calculate_guess_limit
    @phrase.length <= 12 ? guess_limt = 7 : guess_limit = 12
  end

  def display_result_message
    # code goes here
  end
end
