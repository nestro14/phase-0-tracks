# Pseudocode
# Define class name: GuessPhrase
# Define class instance variables for guess_count, phrase, game_over?, and progress_of_guessed_phrase, guess_limit
# Define methods:
#   - initailize method
#   - update_phrase() => returns updated phrase based on user input
#   - char_in_phrase?() => returns true if char is in phrase
#   - display_result_message() => return winning/losing message
#   - display_wrong_guess_count => displays wrong guess count
#   - calculate_guess_limit => return guess lime fo 7 if phrase is <= 12 and 12 if guess limit is > 12
# Prompt 1 user for phrase
# Loop until game is over
#   -Prompt another user to guess phrase buy entering 1 character
#   -display update phrase and wrong guess count
# diplay game result

class Game
  attr_accessor :guess_count, :phrase, :game_over, :progress_of_guessed_phrase, :guess_limit, :wrong_guesses

  def initialize(phrase)
    @phrase = phrase
    @game_over = nil
    @progress_of_guessed_phrase = []
    @wrong_guesses = []
    @guess_limit = 0
  end

  def match_char_with_phrase_index(char)
    @phrase.chars.each_with_index do |element, idx|
      element == char ? @progress_of_guessed_phrase[idx] = char : next
    end
  end

  def update_guessing_phrase(char)
    if char_in_phrase(char)
      match_char_with_phrase_index(char)
    else
      puts "You guessed wrong"
      wrong_guesses << char
      @guess_limit -= 1
    end
  end

  def duplicate_guess?(char)
    if @progress_of_guessed_phrase.include?(char) || @wrong_guesses.include?(char)
      true
    else
      false
    end
  end

  def char_in_phrase(char)
    @phrase.include?(char)
  end

  def set_guessing_phrase_display
    @phrase.chars.each do |character|
      if character != ' '
        @progress_of_guessed_phrase << '_'
      else
        @progress_of_guessed_phrase << character
      end
    end
  end

  def calculate_guess_limit
    actual_phrase_length = @phrase.gsub(/\s/, '')
    actual_phrase_length.length <= 12 ? @guess_limit = 7 : @guess_limit = 12
  end

  def game_over?
    if @guess_limit == 0 || @phrase.chars == @progress_of_guessed_phrase
      true
    else
      false
    end
  end

  def display_result_message
    if @guess_limit == 0
      puts "Wow, you really couldn't guess that? You lose!"
    elsif @phrase.chars == @progress_of_guessed_phrase
      puts "Congrats!! You guessed the phrase right! Good job!"
    end
  end
end

# Driver Code
puts "Welcome to guess that word/phrase!"
puts "User 1, enter in a word or phrase for User 2 to guess: "

new_game = Game.new(gets.chomp.downcase)
new_game.calculate_guess_limit # sets guess limit based on word/phrase length
new_game.set_guessing_phrase_display # sets display of underscores to simulate phrase/word
system 'clear' # clear screen so that user 2 cannot see word of phrase entered

puts "Guess the following phrase/word"
puts new_game.progress_of_guessed_phrase.join(' ')

until new_game.game_over?
  puts "Enter a character you think belongs in the phrase/word: "
  character = gets.chomp.downcase

  until !new_game.duplicate_guess?(character)
    puts "You already guessed this character, enter another: "
    character = gets.chomp.downcase
  end

  new_game.update_guessing_phrase(character)
  puts ''
  puts new_game.progress_of_guessed_phrase.join(' ')
  puts "You have #{new_game.guess_limit} guesses left."

  new_game.display_result_message if new_game.game_over?
end