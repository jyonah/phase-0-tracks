new_hamster = Hash.new

puts "What is the name of this hamster?"
new_hamster["name"] = gets.chomp

puts "What is the volume level of this hamster? ( 1- 10 )"
new_hamster["vol"] = gets.chomp

puts "What is the color of this hamster?"
new_hamster["color"] = gets.chomp

puts "What is the estimated age of this hamster?"
xage = gets.chomp
if xage.empty?
	new_hamster["age"] = NIL
else
	new_hamster["age"] = xage.to_f
end

puts "By your assessment, is this hamster adoptable? (y/n)"
xadopt = gets.chomp
if xadopt == "y"
	new_hamster["adopt"] = true
elsif xadopt == "n"
	new_hamster["adopt"] = false
end

puts "Hamster name: #{new_hamster["name"]}"
puts "Hamster volume: #{new_hamster["vol"]}"
puts "Hamster color: #{new_hamster["color"]}"
if new_hamster["age"] == nil
	puts "Hamster age: unknown"
else
	puts "Hamster age: #{new_hamster["age"]}"
end

if new_hamster["adopt"] == true
	puts "This hamster is ready for adoption"
else
	puts "This hamster is not ready for adoption"
end
