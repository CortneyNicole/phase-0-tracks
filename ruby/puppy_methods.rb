
  # def initialize(name)
  #   name = Puppy.new
  # end




class Puppy


  def initialize
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



fido = Puppy.new
fido.fetch("ball")

fido.speak(5)

fido.roll_over

fido.dog_years(2)

fido.sit

bella = Puppy.new



