# module Shout

#   def self.yell_angrily(words)
#     words.upcase + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words.upcase + "!!!!!" + " =D"
#   end

# end

# p Shout.yell_angrily("fuck")
# p Shout.yelling_happily("I did it")


module Shout

  def frustrated(str)
    puts str.upcase + "?!?!?!" + "**pulls hair out**"
  end

  def celebrating(str)
    puts str.upcase + "!!!!!" + "**happy dance**"
  end

end

class Sports_fan
  include Shout
end

class Programming_student
  include Shout
end

bill = Sports_fan.new
bill.frustrated("What are you doing")
bill.celebrating("score")

cortney = Programming_student.new
cortney.frustrated("Why isn't this working")
cortney.celebrating("I did it")