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

  def celebrate_birthday
    self.age += 1
  end

  def get_mad_at(reindeer_name)
    temp = @reindeer_ranking.delete_at(@reindeer_ranking.rindex(reindeer_name))
    @reindeer_ranking.push(temp)
  end

end

#Test code
claus = Santa.new("Male", "Latino")
claus.speak
claus.eat_milk_and_cookies("Chocolate Chip")
claus.celebrate_birthday
claus.get_mad_at("Donner")
p claus.age
p claus.gender
p claus

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese", "Chinese", "Hawaiian", "N/A", "Korean", "European", "Haitian"]

# 10.times {santas << Santa.new(example_genders.sample, example_ethnicities.sample)}

# santas.each do |santa|
#   puts "This santa's gender and ethnicity is: #{santa.gender} and #{santa.ethnicity}"
# end

