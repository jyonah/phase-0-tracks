module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + " :)"
  end
end

Shout.yell_angrily("I'm mad at you")

Shout.yell_angrily("I'm on top of the world")
