require 'faker'

class Santa
  attr_reader :reindeer_ranking, :age
  attr_accessor :name, :gender, :ethnicity

  def initialize(name, gender, ethnicity, age)
    puts "Initializing Santa instance ..."
    puts ""
    @name = name
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = age
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

end #santa

# OLD DRIVER CODE
# nicholas = Santa.new("male", "caucasian")
# p nicholas.age
# nicholas.celebrate_birthday
# p nicholas.age
#
# p nicholas.reindeer_ranking
# nicholas.get_mad_at("Vixen")
# p nicholas.reindeer_ranking
#
# p nicholas.gender
# nicholas.gender=("tranwoman")
# p nicholas.gender

def generate_santas(how_many)
  santas = []
  santa_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
  santa_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
  how_many.times do |i|
    santas << Santa.new(Faker::Name.first_name, santa_genders.sample, santa_ethnicities.sample, rand(0..140))
  end #generate_loop
  santas
end #generate_santas

santas = generate_santas(2)

santas.each_with_index do |item, idx|
  puts "Santa: #{item.name}"
  puts "gender: #{item.gender}"
  puts "ethnicity: #{item.ethnicity}"
  puts "age: #{item.age}"
  puts ""
end
