class Santa

  attr_accessor :gender, :ethnicity, :age

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

end

# Test code
# claus = Santa.new
# claus.speak
# claus.eat_milk_and_cookies("Chocolate Chip")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese", "Chinese", "Hawaiian", "N/A", "Korean", "European", "Haitian"]

10.times {santas << Santa.new(example_genders.sample, example_ethnicities.sample)}

santas.each do |santa|
  puts "This santa's gender and ethnicity is: #{santa.gender} and #{santa.ethnicity}"
end

