#REFLECTION SECTION:
# What did you learn about pseudocode from working on this challenge?
  # Nothing new....
# What are the tradeoffs of using arrays and hashes for this challenge?
  # Hashes let us associate a number with the items. Arrays... wouldn't?
# What does a method return?
  #Either the last line or something following "return"
# What kind of things can you pass into methods as arguments?
  #Any data.
# How can you pass information between methods?
  #Paramaters and Arguments
# What concepts were solidified in this challenge, and what concepts are still confusing?
  # N/A



# Method to print a list and make it look pretty
# input: hash
# steps:
  # print "hear is your shopping list!"
  # itterate through hash
    # For each key/value pair in hash print "You want #{value} #{key}"
# output: input hash

def print_list(input_hash)
  puts
  puts "Printing the shopping list..."
  puts
  if input_hash.length == 0
    puts "The list is empty."
  else
    puts "Here is the Shopping List!"
    input_hash.each do |key,value|
      puts "You want #{value} #{key}."
    end
  end
  puts
  puts "End of shopping list."
  puts
end



# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Create empty array
  # .splti(" ") the input string to populate the array
  # create empty hash called shopping_list
  # .each through the array assigning each value from our array as a key to the hash.
  # set default quantity of 1
  # print the list to the console [call print method]
# output: [what data type goes here, array or hash?]
def create_list(input_string)
  my_array = input_string.split(' ')
  my_shopping_list = Hash.new

  my_array.each do |item|
    my_shopping_list[item] = 1
  end
  my_shopping_list
end

# Method to update the quantity of an item
# input: hash, item, quantity
# steps:
  #iterate through hash to check if item exists
    # if yes
      # replace item value with quantity
      # return hash
    # if no
      # ask user if s/he wants to add item.
      # if yes
        # call add item
        #return hash
      #else no
        #return hash
# output: hash
def update_item(input_hash, input_item, input_qty)
	bool = false
	input_hash.each do |key,value|
		if input_item == key
			bool = true
		end
	end

	if bool
		input_hash[input_item] = input_qty
	else
		puts
		puts "The item does not exists in the list."
		ans = nil
		while ans != "yes" && ans !="no"
			puts
			puts "Would you like to add the item to the list insted? (Enter yes or no)"
			ans = gets.chomp
		end

		if ans == "yes"
			input_hash[input_item] = input_qty
		end
	end
	input_hash
end


# Method to add an item to a list
# input: item name and optional quantity and hash
# steps:
  # iterate through hash and check if item already exists in hash.
    # if item does exist in hashs
      # print item an quantityh
      # inform user and ask if user desires to update list.
      # if yes
        # call update
        # return the hash
      # if no
        # return the hash
    #elsif item does not exists
      # add item to hash with quantity as value
      # return hash
# output: hash
def add_item(input_hash, input_item, input_qty = 1)
  bool = false
  item = nil
  quantity = nil
  input_hash.each do |key,value|
    if key == input_item
      bool = true
      item = key
      quantity = value
    end
  end

  ans = nil
  if bool
    puts "The hash already contains the item."
    puts
    puts "#{item} : #{quantity}"
    while ans != "yes" && ans != "no" do
      puts
      puts "Would you like to update the quantity instead? (Enter yes or no)"
      ans = gets.chomp
    end

    if ans == "yes"
      input_hash = update_item(input_hash, input_item, input_qty)
    end
  else
    input_hash[input_item] = input_qty
  end

  input_hash
end

# Method to remove an item from the list
# input: hash, item to remove
# steps:
  # iterate through hash to check if item exists
  # if yes
    # remove item
    # return hash
  #else no
    # inform user item does not exist.
    # return hash
# output: hash
def remove_item(input_hash, input_item)
	bool = false

	input_hash.each do |key,value|
		if input_item == key
			bool = true
		end
	end

	if bool
		input_hash.delete(input_item)
	else
		puts
		puts "The item does not exists in the list."
		puts
	end
	input_hash
end






puts
puts "Hello! Lets create a shopping list."
puts
puts "Please enter the items separated by commas. Example: carrots apples cereal pizza"
a_string = gets.chomp
puts

a_hash = Hash.new

a_hash = create_list(a_string)


looper = true

while looper do
	bool = true

	while bool do
		ans = nil
		puts
		print_list(a_hash)
		puts "What would you like to do to your items in the shopping list. (Enter 'add', 'remove', 'update' or 'nothing')"
		ans = gets.chomp
		if ans == "add" || ans == "remove" || ans == "update" || ans == "nothing"
			bool = false
		end
	end

	a_item = nil
	a_qty = nil

	if ans == "nothing"
		looper = false
	elsif ans == "add"
		puts
		puts "Enter the name of the item you would desire to add to the shopping list."
		a_item = gets.chomp
		puts
		puts "Enter the quantity of the item."
		a_qty = gets.chomp
		puts
		a_hash = add_item(a_hash,a_item,a_qty.to_i)
	elsif ans == "update"
		puts
		puts "Enter the name of the item you would desire to update to the shopping list."
		a_item = gets.chomp
		puts
		puts "Enter the quantity of the item."
		a_qty = gets.chomp
		puts
		a_hash = update_item(a_hash,a_item,a_qty.to_i)
	elsif ans == "remove"
		puts
		puts "Enter the name of the item you would desire to delete from the shopping list."
		a_item = gets.chomp
		puts
		a_hash = remove_item(a_hash,a_item)
	end
end

puts
puts
puts
puts "Here is your final list."
puts
print_list(a_hash)
puts
puts
