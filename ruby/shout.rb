module Shout

  def self.yell_angrily(words)
    words.upcase + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words.upcase + "!!!!!" + " =D"
  end

end

p Shout.yell_angrily("fuck")
p Shout.yelling_happily("I did it")