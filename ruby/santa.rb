class Santa

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
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
  end

end

reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

#paul = Santa.new
#paul.speak
#paul.eat_milk_and_cookies("sugar")

santa = Santa.new("female", "white")
santa.speak
santa.about

santa_array = []

santa_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

santa_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]



santa_genders.length.times do |i|
  santa_array << Santa.new(santa_genders[i], santa_ethnicities[i])
   puts "intializing santa instance that is #{santa_genders[i]} and #{santa_ethnicities[i]}"
end









