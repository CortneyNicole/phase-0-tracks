puts "What's your name?"
name = gets.chomp
puts "How old are you and in what year were you born?"
age = gets.chomp
puts "Our cafeteria serves garlic bread. Do you want us to set an order for you?"
garlic_bread = gets.chomp
puts "would you like to enroll in our company's health insurence?"
insurence = gets.chomp


puts "What's your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "in what year were you born?(****)"
year_born = gets.chomp.to_i
puts "Our cafeteria serves garlic bread. Do you want us to set an order for you?(yes/no)"
garlic_bread = gets.chomp
puts "would you like to enroll in our company's health insurence?(yes/no)"
insurence = gets.chomp

employee_age = 2017 - year_born
if age == employee_age
     age = true
else 
    age = false 
end

if garlic_bread == "yes"
     garlic_bread = true
end

if insurence == "yes"
     insurence = true
end 

  if age && (garlic_bread || insurence) == true
        puts "Probably Not a Vampire"
          elsif age && (garlic_bread || insurence) == false
                puts "Probably a Vampire"
                  elsif age && (garlic_bread && insurence) == false
                        puts "Almost Certainly a Vampire"
                          elsif name == "Drake Cula" || "Tu Fang"
                                puts "VAMPIRE!!!"
                                  else 
                                        puts "Results Inconclusive"
                                          end





  end
end
