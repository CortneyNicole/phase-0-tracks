
class Santa

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
  end

  def santa_age(age)
    @age = age
    puts "Your age is #{age}"
  end

  def speak
    puts "HO HO HO! Happy Holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a delicous #{cookie} cookie!"
  end

  def reindeer_ranking
    reindeer_array = @reindeer_array
    @reindeer_array =  ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def about
    puts "You are a #{@gender}"
    puts "your ethnicity is #{@ethnicity}"
  end

  def celebrate_birthday
    @age += 1
    puts "Happy Birthday! You are now #{@age}"
  end

  def get_mad_at(reindeer_name)
    @reindeer_array.insert(8, @reindeer_array.delete_at(@reindeer_array.index(reindeer_name)))
    p @reindeer_array
  end

  #setter
  def gender=(new_gender)
    @gender = new_gender
  end

end



santa_array = []

santa_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

santa_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]



santa_genders.length.times do |i|
  santa_array << Santa.new(santa_genders[i], santa_ethnicities[i])
  puts "intializing santa instance that is #{santa_genders[i]} and #{santa_ethnicities[i]}"
end

#driver code

santa = Santa.new("female", "white")
santa.speak
santa.reindeer_ranking
santa.about
santa.santa_age(27)
santa.celebrate_birthday
santa.get_mad_at("Dasher")
santa.gender = "panda"
puts "We updated your gender to #{santa.gender}"






