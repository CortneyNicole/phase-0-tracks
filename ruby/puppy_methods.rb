
class Puppy


  def initialize(name)
    @name = name
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
    puts "Woof!" * number
  end

  def roll_over
    puts "*Roll Over*"
  end

  def dog_years(human_years)
    dog = human_years * 7
    p "your dog age is #{dog}!"
  end

  def sit
    puts "*sit*"
  end

end

Puppy.new("bella")

fido = Puppy.new
fido.fetch("ball")

fido.speak(5)

fido.roll_over

fido.dog_years(2)

fido.sit

class Harry_Potter_Characters

 def initialize
    puts "Welcome to Hogwarts"
  end

 def spell
    puts "Poof"
  end

 def sort(house)
    puts "Your house is #{house}"
  end

end

 Hermione = Harry_Potter_Characters.new
  Hermione.instance_of?(Harry_Potter_Characters)

 Ron = Harry_Potter_Characters.new

 Ron.spell
  Hermione.sort("Griffendor")

character_array = []

50.times do
   character_array.push(Harry_Potter_Characters.new)
end

p character_array

character_array.each do |student|
  student.spell
  student.sort("gryffendor")
end






