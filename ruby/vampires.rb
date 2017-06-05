#vampires.rb

def human_age?(age, birth_year)
  current_year = 2017
  age_birth_match = [current_year - age, current_year - (age + 1)].include?(birth_year)
  (age <= 130) && age_birth_match
end

def eats_garlic_bread?(answer)
  answer.downcase.start_with?('y')
end

def wants_insurance?(answer)
  answer.downcase.start_with?('y')
end

def vampire_name?(employee_name)
  return ["drake cula", "tu fang"].include?(employee_name.downcase)
end

def valid_digit?(digit)
  digit == digit.to_i.to_s
end

def enter_valid_digit(valid_digit=0)
  until valid_digit?(valid_digit)
    valid_digit = gets.chomp
    puts "Enter a valid digit" if valid_digit?(valid_digit) == false
  end
  valid_digit
end

def vampire_allergy?(allergies)
  allergies.include?('sunshine')
end

employee_name, garlic_bread_order, health_insurance = ''
age, employees, birth_year = nil
allergies = []

puts "Welcome to the employee survey process, how many employees would you like to processed? "
employees = enter_valid_digit(employees).to_i

1.upto(employees) do |employee_number|

  puts "\nWhat is the name of employee ##{employee_number}? "
  employee_name = gets.chomp

  puts "How old is employee ##{employee_number}? "
  age = enter_valid_digit(age).to_i

  puts "What year was employee ##{employee_number} born? "
  birth_year = enter_valid_digit(birth_year).to_i

  puts "Our company cafeteria serves garlic bread. Should we order some for employee ##{employee_number}?(y/n) "
  garlic_bread_order = gets.chomp

  puts "Would employee ##{employee_number} like to enroll in the company’s health insurance?(y/n) "
  health_insurance = gets.chomp

  puts "Does employee ##{employee_number} have any allergies? \nIf so, please list them and type in 'done' when finshed"
  until allergies.last == 'done'
    allergies << gets.chomp.downcase
    break if vampire_allergy?(allergies)
  end

  if vampire_allergy?(allergies)
    puts "Probably a vampire."
  elsif human_age?(age, birth_year) && eats_garlic_bread?(garlic_bread_order) && wants_insurance?(health_insurance)
    puts "Probably not a vampire."
  elsif ((human_age?(age, birth_year) != true) && !eats_garlic_bread?(garlic_bread_order)) || (!human_age?(age, birth_year) && !wants_insurance?(health_insurance))
    puts "Probably a vampire."
  elsif !human_age?(age, birth_year) && !eats_garlic_bread?(garlic_bread_order) && !wants_insurance?(health_insurance)
    puts "Almost certainly a vampire."
  elsif vampire_name?(employee_name)
    puts "Definitely a vampire."
  else
    puts "Results inconclusive."
  end
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."