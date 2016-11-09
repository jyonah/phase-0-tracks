# module Shout
#   def self.yell_angrily(words)
#     puts words + "!!!" + " :("
#   end
#
#   def self.yelling_happily(words)
#      puts words + "!!!" + " :)"
#   end
# end
#
# Shout.yell_angrily("I'm mad at you")
#
# Shout.yell_angrily("I'm on top of the world")

module Shout
  def yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def yelling_happily(words)
    puts words + "!!!" + " :)"
  end
end

class Jonah
  include Shout
end

class Steven
  include Shout
end


person_1 = Jonah.new
person_1.yell_angrily('Oh my god')
person_1.yelling_happily('Hillary won')

person_2 = Steven.new
person_2.yell_angrily('Trump won')
person_2.yelling_happily('Cake')
