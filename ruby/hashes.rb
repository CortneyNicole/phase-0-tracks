
=begin
* create survey asking user information and gather user input.
* create hash
* use keys in survey to collect user input
=end








puts "Please, tell me your name."
[:name] = gets.chomp
puts "Whats your phone number?"
[:contact] = gets.chomp
puts "Whats your favorite color?"
[:color] = gets.chomp
puts "Are you open to wallpaper? (yes/no)"
[:wallpaper] = gets.chomp
puts "How many rooms do you want done?"
[:number_rooms] = gets.chomp
puts "Do you prefer modern or rustic?"
[:style] = gets.chomp

p interior_design
