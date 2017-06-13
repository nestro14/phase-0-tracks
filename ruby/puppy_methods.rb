class Puppy

    def initialize
        puts "Initializing new puppy instance..."
    end

    def fetch(toy)
        puts "I brought back the #{toy}!"
        toy
    end

    def speak(woofs)
        woofs.times do |x|
            puts "woof"
        end
    end

    def roll_over
        puts "*Roll over*"
    end

    def dog_years(x)
        puts "My dog is #{x + 7} years old"
    end

    def play_dead
        puts "Lies down"
    end

end


class Kitten

    def initialize
        puts "We now have a kitten class"
    end

    def speak
        puts "meow meow"
    end

    def scratch_post(x)
        x.times do |x|
            puts "*scratch,purr*"
        end
    end
end

cassy = Kitten.new

cassy.speak

cassy.scratch_post(3)


crate = []
i = 1
until i == 50
    crate << Kitten.new
    i += 1
end
p crate

crate.each do |kitten|
    kitten.speak
    kitten.scratch_post(2)
end


tundra = Puppy.new

tundra.speak(3)

tundra.fetch("ball")

tundra.roll_over

tundra.dog_years(4)

tundra.play_dead