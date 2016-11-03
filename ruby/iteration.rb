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
