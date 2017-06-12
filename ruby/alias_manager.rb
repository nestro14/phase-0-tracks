# Release 0: Attempt a Tricky Algorithm
#pseudocode

#1. Swapping the first and last name.
def swap_first_last_name(full_name)
  full_name.split(' ').reverse!
end

def char_vowel?(char)
  char.rindex(/[aeiou]/) == nil ? false : true
end

def swap_case?(char)
  letters = ('a'..'z').to_a
  if letters.include?(char)
    false
  else
    true
  end
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

def make_fake_name(spy_name)
  spy_name.chars.map{|char| char_vowel?(char) ? next_vowel(char) : next_consonant(char) }.join
end

VOWELS = ['a','e','i','o','u']
CONSONANTS = ('a'..'z').to_a.delete_if{|c| char_vowel?(c) == true}
spy_name = "Felicia Torres"

first_name, last_name = swap_first_last_name(spy_name)
fake_name = make_fake_name(first_name).concat(' ') + make_fake_name(last_name)

