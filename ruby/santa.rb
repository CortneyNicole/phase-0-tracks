#pseudocode
  # make given arrays global
  # create santa_generator method that passes in gender list and ethnicity list
    #iterate through each item in gender and ethnicity array x amount of times
    # add method that will select a random number 1-40
    # print attributes




class Santa
  attr_accessor :gender, :age, :ethnicity

  def initialize(gender, ethnicity, age)
    @gender = gender
    @ethnicity = ethnicity
    @age = age
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

  # #getter

  # def gender
  #   @gender
  # end

  # def age
  #   @age
  # end

  # def ethnicity
  #   @ethnicity
  # end

  # #setter

  # def gender=(new_gender)
  #   @gender = new_gender
  # end

end

santa_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

santa_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]


def santa_generator(genders_list, ethnicities_list)
  100.times do
    s = Santa.new(genders_list.sample, ethnicities_list.sample,rand(1..140))
    puts "age: #{s.age}"
    puts "ethnicity: #{s.ethnicity}"
    puts "gender: #{s.gender}"
    puts "*************"
  end
end

santa_generator(santa_genders, santa_ethnicities)
