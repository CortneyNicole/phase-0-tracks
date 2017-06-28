
=begin
* create survey asking user information and gather user input.
* create hash
* use keys in survey to collect user input
* print hash
* creat method to allow user to repeat
=end

interior_design = Hash.new()

puts "Please, tell me your name."
interior_design[:name] = gets.chomp
puts "What's your phone number?"
interior_design[:contact] = gets.chomp
puts "What's your favorite color?"
interior_design[:color] = gets.chomp
puts "Are you open to wallpaper? (yes/no)"
interior_design[:wallpaper] = gets.chomp
puts "How many rooms do you want done?"
interior_design[:number_rooms] = gets.chomp
puts "Do you prefer modern or rustic?"
interior_design[:style] = gets.chomp

interior_design.each_value { |value| puts value}

p interior_design

puts "Do you need to update anything? (yes/no)"
update = gets.chomp

if update != "no"

 puts "What would you like to update? (name, contact, color, wallpaper, number_rooms, or style)"
update = gets.chomp
puts "What is the update?"
interior_design[update.to_sym] = gets.chomp
end

p interior_design

