class Santa
  def initialize(name, gender, ethnicity)
    puts "Initializing Santa instance ..."
    @name = name
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end #initialize


  def speak
    puts "Ho, ho, ho! Haaappy Holidays!"
  end #speak

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end #eat_milk_and_cookies

end #santa


santas = []
santa_names = ['Nicholas', 'Jenny', 'Wanda', 'Wilbur']
santa_genders = ["transman", "gender fluid", "male", "bigender"]
santa_ethnicities = ["black", "Latino", "white", "Japanese-African"]

santa_names.length.times do |i|
  santas << Santa.new(santa_names[i], santa_genders[i], santa_ethnicities[i])
end

p santas
