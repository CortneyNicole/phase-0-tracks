class Santa

  def initialize(gender, ethnicity, age)
    puts "intializing santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @age = age
  end

  def speak
    puts "Ho HO HO! Happy Holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a delicous #{cookie} cookie!"
  end

  def about
    puts "You are a #{@gender}"
    puts "your ethnicity is #{@ethnicity}"
    puts "your age is #{@age}"
  end

end

reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

#paul = Santa.new
#paul.speak
#paul.eat_milk_and_cookies("sugar")

santa = Santa.new("female", "white", 27)
santa.speak
santa.about
