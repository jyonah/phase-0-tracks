#pseudocode
#define some useful question methods.
#parsing y/n responses into boolean values.
def yn_booleen(value)
	if value == "y"
		return true
	elsif value == "n"
		return false
	else
		p "Sorry, that response was not understood. Please use 'y' for yes and 'n' for no."
		return value
	end #if
end #yn_booleen

#asking y/n questions
def yes_no_q(question)
	response = ""
	loop do
		p question + " (y/n)"
  		response = gets.chomp
  		response = yn_booleen(response)
  		break if response == true || response == false
  	end #loop
  	response
end #yes_no_q

#asking questions with simple value responses
def general_q(question)
  p question
  gets.chomp
end

#to correct incorrect profile mistakes.
def correct_profile(client, questions)
	#create array of keys.
	keys = client.keys
	#iterate through keys array and ask client which needs correcting.
  keys.length.times do |iterate|
    p "Enter #{iterate+1} to update #{keys[iterate]}"
  end #keys.length.times do
	#Evaluate numeric response to a key and re-ask related question.
	which = gets.to_i - 1
	client[keys[which]] = nil
	eval(questions[keys[which]])
	return client[keys[which]]
end #correct_profile

#To confirm profile is correct.
def confirm_profile(client)
	p "Congratulations! Here is your client's profile:"
	client.each do |key, value|
		p "#{key}: #{value}"
	end #client.each
	return yes_no_q("Is this profile and all it's feilds correct?")
end #confirm_profile



#define a new hash client.
client = Hash.new
questions = Hash.new
#Ask the user several questions about this client and update the hash with the information.

#Name
client[:name] = general_q("What is the new clients name?")
questions[:name] = "general_q('What is the new clients name?')"

#age
client[:age] = general_q("What is the clients age?")
questions[:age] = "general_q('What is the clients age?'')"

#if they have children
client[:children] = yes_no_q('Does the client have any children?')
#if so, how many? If not, skip.
if client[:children]
  client[:num_of_children] = general_q('How many?').to_i
  questions[:num_of_children] = "general_q('How many?').to_i"
end #if
questions[:children] = "client[:children] = yes_no_q('Does the client have any children?')
if client[:children]
  client[:num_of_children] = general_q('How many?')
end #if"

#Does the client have favorite colors? If so, list all of them. If not, skip.
if yes_no_q('Does the client have any favorite colors?')
  client[:favorite_colors] = []
  color = general_q('List colors, one at a time, pressing enter. Write exit when done.')
  while color != "exit"
    client[:favorite_colors] << color
    color = general_q('List colors, one at a time, pressing enter. Write exit when done.')
  end #while color
else #if
  client[:favorite_colors] = nil
end #if yes_no_q
questions[:favorite_colors] = "client[:favorite_colors] = []
color = general_q('List colors, one at a time, pressing enter. Write exit when done.')
while color != "exit"
  client[:favorite_colors] << color
  color = general_q('List colors, one at a time, pressing enter. Write exit when done.')
end #while color"

#Does the client have a favorite decore theme, if so, list it. If not, nil.
if yes_no_q("Does the client have a favorite decor theme?")
  client[:decor_theme] = general_q("What is the clients favorite decor theme?")
else
  client[:decor_theme] = nil
end #if yes_no_q
questions[:decor_theme] = "general_q('What is the clients favorite decor theme?')"

#Display data for user, ask if correct.
loop do
	break if confirm_profile(client)
	correct_profile(client, questions)
end #loop
p "Congratulations! Your client's profile is complete!"
client.each do |key, value|
	p "#{key}: #{value}"
end #client.each
