# module Shout #Module

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!!!" + " :)"
#   end

# end

# string = "I got the module working"
# p Shout.yelling_happily(string)

module Shout # Mixin Version
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!" + " :)"
  end
end

class Person
  include Shout
end

class Baby
  include Shout
end

string = "I got the Mixin working"

person = Person.new
p person.yelling_happily(string)
p person.yell_angrily("I hate it when this is too easy")

baby = Baby.new
p baby.yelling_happily("Goo-go-ga-ga")
p baby.yell_angrily("Whaaaaa whaaa")