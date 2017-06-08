# pseudocode
# -------------------------------------------------------
# boilerplate client information hash
# iterate through hash and edit values
# display current hash
# ask user if he/she would like to edit the hash by key
# edit hash given by the user input(key)
# re-display client information hash

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

def yes_or_no?(answer)
  answer.downcase.start_with?('y') ? true : false
end

def edit_cilent_info(key_info, client_info)
  case key_info
  when :name
    puts "What is the client's #{key_info}?"
    client_info[key_info] = gets.chomp
  when :age
    puts "What is the client's #{key_info}?"
    client_info[key_info] = enter_valid_digit(nil).to_i
  when :number_of_children
    puts "How many children does the client have?"
    client_info[key_info] = enter_valid_digit(nil).to_i
  when :decor_theme
    puts "What kind of decor theme does the client want?"
    client_info[key_info] = gets.chomp
  when :has_pets
    puts "Does the client have any pets? (y/n)"
    client_info[key_info] = yes_or_no?(gets.chomp)
  when :special_requests
    puts "Please specify any special requests from the client:"
    client_info[key_info] = gets.chomp
  when :none
    puts "Skipped edit option."
  else
    puts "Not a valid catergory."
  end
end

def display_hash_info(hash_info)
  puts "\nHash info:"
  p hash_info
end

client_info = {:name => nil,:age => nil, :number_of_children => nil, :decor_theme => nil, :has_pets => nil, :special_requests => nil }

puts "\nPlease enter the client's information"
client_info.each_key do |key_info|
  edit_cilent_info(key_info, client_info)
end

display_hash_info(client_info)

puts "\nThank you for the information.\nType any of the following catergories to edit that information. Otherwise, type 'none'\n\n"
client_info.values.map{|value| client_info.key(value).to_s}.each{|key| puts key}
print "\nCategory:"
edit_cilent_info(gets.chomp.to_sym, client_info)

display_hash_info(client_info)