puts "How many employees will be processed?"
employee_number = gets.chomp.to_i

until employee_number == 0
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
  else 
    garlic_bread = false
  end

  if insurence == "yes"
     insurence = true
  else 
    insurence =false
  end 

  if name == "Drake Cula" || name == "Tu Fang"
     name = true
  else 
     name = false
  end

  if name 
    puts "VAMPIRE!!!!"
  elsif !age && (!garlic_bread && !insurence)
    puts "Almost Certainly a Vampire!"
  elsif !age && (!garlic_bread || !insurence)
    puts "Probably a Vampire"
  elsif age && (garlic_bread || insurence)
    puts "Probably Not a Vampire!"
  end
  employee_number -= 1
end
