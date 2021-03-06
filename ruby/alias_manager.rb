# Release 0: Attempt a Tricky Algorithm

##pseudocode
# Create constants for vowels and consonats
# split up first and last name into array
# swap first and last name
# split up names into characters
# create a method to validate if the char is a vowel or consonant
# create a method that check whether the character needs to be swapped
# create a method to return the next vowel
# create a method to return the next consonant
# iterate through characters in names and return the next character
# join the characters together and first and last name
# create method to put the alias all together
# create a loop to ask user for names to be changed into an alias

def swap_first_last_name(full_name)
  full_name.split(' ').reverse!
end

def char_vowel?(char)
  VOWELS.include?(char.downcase)
end

def swap_case?(char)
  letters = ('a'..'z').to_a
  letters.include?(char) ? false : true
end

def next_vowel(char)
  if char == 'u' && swap_case?(char)
    'a'.swapcase
  elsif char == 'u'
    'a'
  elsif swap_case?(char)
    VOWELS.at(VOWELS.index(char.swapcase).next).swapcase
  else
    VOWELS.at(VOWELS.index(char).next)
  end
end

def next_consonant(char)
  if char == 'z' && swap_case?(char)
    'a'.swapcase
  elsif char == 'z'
    'a'
  elsif swap_case?(char)
    CONSONANTS.at(CONSONANTS.index(char.swapcase).next).swapcase
  else
    CONSONANTS.at(CONSONANTS.index(char).next)
  end
end

def convert_name_to_alias(spy_name)
  spy_name.chars.map{|char| char_vowel?(char) ? next_vowel(char) : next_consonant(char)}.join
end

def create_alias(spy_name)
  if swap_first_last_name(spy_name).count > 1
    first_name, last_name = swap_first_last_name(spy_name)
  fake_name = convert_name_to_alias(first_name).concat(' ') + convert_name_to_alias(last_name)
  else
    fake_name = convert_name_to_alias(spy_name)
  end
end

VOWELS = ['a','e','i','o','u']
CONSONANTS = ('a'..'z').to_a.delete_if{|c| char_vowel?(c) == true}

enter_another_name = ''
aliases = []

until enter_another_name.downcase == 'quit'
  puts "\nPlease enter a name that you would like to convert to an alias: "
  original_name = gets.chomp
  alias_name = create_alias(original_name)
  aliases << [original_name, alias_name]
  puts "The alias for #{original_name} is: #{alias_name}"
  print "Would you like to enter in another(Enter)?"
  enter_another_name = gets.chomp
  print "\n" if enter_another_name == 'quit'
end

aliases.each do |names|
  puts "#{names.first} is also known as #{names.last}"
end
