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

  def celebrate_birthday
    puts "I Looooooove cake!"
    @age += 1
  end

  def get_mad_at(reindeer)
    puts "#{reindeer}!!!!"
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking << reindeer
  end

  #getter methods
  def age
    @age
  end

  def ethnicity
    @ethnicity
  end
  
  def reindeer_ranking
    @reindeer_ranking
  end

  def gender
    @gender
  end

  #setter methods
  def gender=(new_gender)
    @gender = new_gender
  end

end #santa

nicholas = Santa.new("Nicholas", "male", "caucasian")

p nicholas.age
nicholas.celebrate_birthday
p nicholas.age

p nicholas.reindeer_ranking
nicholas.get_mad_at("Vixen")
p nicholas.reindeer_ranking

p nicholas.gender
nicholas.gender=("tranwoman")
p nicholas.gender
# santas = []
# santa_names = ['Nicholas', 'Jenny', 'Wanda', 'Wilbur']
# santa_genders = ["transman", "gender fluid", "male", "bigender"]
# santa_ethnicities = ["black", "Latino", "white", "Japanese-African"]
#
# santa_names.length.times do |i|
#   santas << Santa.new(santa_names[i], santa_genders[i], santa_ethnicities[i])
# end
#
# p santas
