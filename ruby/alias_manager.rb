#prompt for name and save.
p "What is your full name?"
name = gets.chomp.downcase

#reverse name
  #split name into array of firstname lastname.
  #reverse our array
  #join back into a string.
new_alias = name.split(' ').reverse.join(' ')

#shift consonants and vowels.
  #create a string of consonants and a string of vowels.
const = "bcdfghjklmnpqrstvwxyzb"
vow = "aeioua"

  #iterate through string
new_alias.length.times do |pos|
  #detect if vowel or consonant
  if vow.index(new_alias[pos])
    #reassign vowel
    index_of_vow = vow.index(new_alias[pos])
    new_alias[pos] = vow[index_of_vow + 1]
  elsif const.index(new_alias[pos])
    #reassign consonant
    index_of_const = const.index(new_alias[pos])
    new_alias[pos] = const[index_of_const + 1]
  end #if
end #new_alias do

alias_array= new_alias.split(' ')


alias_array.each do |word|
   word.capitalize!
end

new_alias = alias_array.join(' ')

p new_alias
