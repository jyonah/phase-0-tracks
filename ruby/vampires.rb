#Method for converting y or n answers into boolen value.
def yesnobooleen(x)
  if x == "y"
    return true
  elsif x == "n"
    return false
  else
    return "bad value"
  end #if
end #Method

#Start of new employee questions.

puts "How many potential employees will we be processing today?"
employees = gets.to_i

until employees == 0
  #Identity
  candidate = Hash.new
  puts "What is your name?"
  candidate["name"] = gets.chomp

  #Age and year of birth.
  puts "How old are you?"
  candidate["age"] = gets.to_i

  puts "And what year were you born?"
  candidate["birthyear"] = gets.to_i

  agecorrect = (Time.now.year - candidate["age"]).between?(candidate["birthyear"], candidate["birthyear"]+1)

  #Garlic Check
  puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
  candidate["garlic"] = yesnobooleen(gets.chomp)

  #Mortality Check
  puts "Would you like to enroll in the company’s health insurance? (y/n)"
  candidate["insurance"] = yesnobooleen(gets.chomp)

  #Sunshine Check
  pigsfly = 0
  while pigsfly == 0
    puts "Please list any allergies you may have, one at a time, pressing return between each one. When you are finished listing your allegeries or you have none, type 'done.'"
    allergy = gets.chomp
    if allergy == "sunshine"
      puts "Probably a vampire."
      pigsfly += 1
    elsif allergy == "done"
      pigsfly += 1
    end #if
  end #while pigsfly

  #Is candidate a vampire logic
  case
  when candidate["name"] == "Drake Cula", candidate["name"] == "Tu Fang"
    puts "Definitely a vampire."
  when agecorrect == false && candidate["garlic"] == false && candidate["insurance"] == false
    puts "Almost certainly a vampire."
  when agecorrect == false && (candidate["garlic"] == false || candidate["insurance"] == false)
    puts "Probably a vampire."
  when agecorrect && (candidate["garlic"] || candidate["insurance"])
    puts "Probably not a vampire."
  else
    puts "Results inconclusive."
  end #case end

  employees -= 1
end #until employees 0
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
