class Santa

  def speak
    puts "Ho HO HO! Happy Holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a delicous #{cookie} cookie!"
  end

  def initialize
    puts "intializing santa instance..."
  end

end

paul = Santa.new
paul.speak
paul.eat_milk_and_cookies("sugar")
