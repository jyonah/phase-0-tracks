#RELEASE 1

favorite_shows = ["Sillicon Valley", "How to Get Away With Murder", "Shark Tank", "No Game No Life" ]

actors_characters = {
  "Thomas Middleditch" => "Richard Hendriks",
  "Jack Falahee" => "Connor Walsh",
  "Ai Kayano" => "Shiro"
}

# .each on our Array.
p favorite_shows
favorite_shows.each {|show_name| puts "The show #{show_name} is really good!"}
p favorite_shows

#.map on our Array
p favorite_shows
p "-----"
favorite_shows.map! {|show| show.upcase}
p favorite_shows
p "-----"
favorite_shows.map! {|show| show.capitalize }
p favorite_shows

#.each on our hash.
p actors_characters
p "-----"
actors_characters.each {|actor, character| p "#{actor} plays the character #{character}" }
p "-----"
p actors_characters


# RELEASE 2
this_hash = {
	"a" => 1,
	"b" => 2,
	"c" => 3,
	"d" => 4,
}

this_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p this_array
this_array.delete_if {|num| num < 5.5}
p this_array
p "----"

p this_hash
this_hash.delete_if {|letter, num| letter < "b" }
p this_hash
p "----"

p this_array
this_array.select! {|num| num > 6}
p this_array
p "----"

p this_hash
this_hash.select! {|letter, num| num.even?}
p this_hash
p "----"

p this_array
this_array.find_all {|num| num > 7}
p this_array
p "----"

p this_hash
this_hash.keep_if {|letter, num| num < 3}
p this_hash
p "----"

p this_array
this_array = this_array.take_while {|num| num < 9 }
p this_array
