#Class Design
# Initialize the puppy info - Instance variables
#   - Name, color, size, etc
# Define puppy methods like 'bark' and 'growl'

class Puppy
  attr_accessor :name, :color, :size

  def initialize(name = '', color = '', size = '')
      @name = name
      @color = color
      @size = size
    end

  def bark
    puts "Woof! Woof!"
  end

  def growl
    puts "Grrrrr! Grrrrr!"
  end

end