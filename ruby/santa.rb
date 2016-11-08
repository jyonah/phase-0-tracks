class Santa

  def speak
    puts "Ho, ho, ho! Haaappy Holidays!"
  end #speak

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end #eat_milk_and_cookies

  def initialize
    puts "Initializing Santa instance ..."
  end
end

nicholas = Santa.new

nicholas.speak
nicholas.eat_milk_and_cookies('snickerdoodle')
