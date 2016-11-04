
#define a method for creating aliases.
def make_alias (name)
  #convert argument to lower case to work with.
	name.downcase!
  #split the name into an array, reverse the array, and rejoin for a new string.
	new_alias = name.split(' ').reverse.join(' ')
  #define string of consanants and vowels.
  const = "bcdfghjklmnpqrstvwxyzb"
  vow = "aeioua"
  #iterate through the string
  new_alias.length.times do |pos|
    #if letter is a vowel, reassign 'next' vowel.
    if vow.index(new_alias[pos])
      index_of_vow = vow.index(new_alias[pos])
      new_alias[pos] = vow[index_of_vow + 1]
    #if letter is a consanant, reassign 'next' consanant.
    elsif const.index(new_alias[pos])
      index_of_const = const.index(new_alias[pos])
      new_alias[pos] = const[index_of_const + 1]
    end #if
  end #new_alias do

  #break new alias string into array to work with.
  alias_array= new_alias.split(' ')
  #capitalize each word in array
  alias_array.each do |word|
     word.capitalize!
  end #do loop
  #rejoin words in array as a string and return.
  new_alias = alias_array.join(' ')
end #make_alias

#create a hash of identities and aliases 'spy_records'
spy_records = Hash.new

#loop through an interface that breaks if 'quit' is entered.
loop do
  #ask user for name to make an alias out of.
	p "What is the full name of the person who needs an alias? (Type 'quit' to exit.)"
	name = gets.chomp
  #break loop if response is 'quit'
	break if name.downcase == "quit"
  #save name and new alias to spy_records hash.
	spy_records[name.to_sym] = make_alias(name)
  #UI Whitespace.
	puts ""
end #until
puts ""
spy_records.each {|key, value| p "#{key} is also known as #{value}"}
