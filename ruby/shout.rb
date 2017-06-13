module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + " :)"
  end

end

string = "I got the module working"

p Shout.yelling_happily(string)