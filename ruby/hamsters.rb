hamster_name = ""
volume_level = 0
fur_color = ""
good_candidate = ""
estimated_age = nil

puts "hamster's name: "
hamster_name = gets.chomp

puts "volume level(1-10): "
volume_level = gets.chomp.to_i

puts "Fur Color: "
fur_color = gets.chomp

puts "The hamster is a (good or bad) candidate for adoption?"
good_candidate = gets.chomp

puts "Estimated age: "
estimated_age = gets.chomp.to_i

puts "The hamster's name is #{hamster_name}."
puts "#{hamster_name}'s noise level on a scale of 1-10 is #{volume_level}."
puts "#{hamster_name} has #{fur_color} colored fur."
puts "#{hamster_name} is a #{good_candidate} candidate for adoption."
puts "#{hamster_name}'s estimated age is #{estimated_age}."

