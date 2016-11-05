VOWS = "aeioua"
CONSTS = "bcdfghjklmnpqrstvwxyzb"

def next_vow(letter)
  letter = VOWS[VOWS.index(letter)+1]
end

def next_const(letter)
  letter = CONSTS[CONSTS.index(letter)+1]
end

def swap_names(name)
  name.split(' ').reverse.join(' ')
end

def title_case(this_alias)
  manipulator = this_alias.split(' ')
  manipulator.each {|word| word.capitalize!}
  this_alias = manipulator.join(' ')
end

def make_alias (name)
  new_alias = swap_names(name.downcase!)
  new_alias.length.times do |pos|
    if VOWS.index(new_alias[pos])
      new_alias[pos] = next_vow(new_alias[pos])
    elsif CONSTS.index(new_alias[pos])
      new_alias[pos] = next_const(new_alias[pos])
    end#if
  end #loop
  title_case(new_alias)
end #make_alias

def interface()
  agent_records = Hash.new
  loop do
    puts "What is the full name of the person who needs an alias? (Type 'quit' to exit.)"
    name = gets.chomp
    puts "" #Whitespace for readability.
    break if name.downcase == "quit"
    agent_records[name.to_sym] = make_alias(name)
  end #loop
  agent_records.each {|key, value| p "#{key} is also known as #{value}"}
end #interface

interface()
