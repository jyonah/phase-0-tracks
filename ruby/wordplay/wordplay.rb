ABC = "abcdefghijklmnopqrstuvwxyz"

class Wordplay

  attr_reader :answer, :correct_guesses, :incorrect_guesses, :allowed_guesses, :all_guesses
  attr_accessor :is_over, :guesser_constructor
  # attr_accessor

  def initialize(answer)
    puts "Starting new game of Wordplay!"
    @answer = answer
    @correct_guesses = []
    @incorrect_guesses = []
    @all_guesses = []
    @guesser_constructor = ""
    @allowed_guesses = (answer.length + 5)
    @is_over = false
  end

  def build_constructor
    @answer.each_char do |character|
      if ABC.index(character.downcase)
        @guesser_constructor << "*"
      else
        @guesser_constructor << character
      end #if
    end #each
  end #method

  def check_guess?(guess)
    correct_value = nil
    guess.downcase!
    if @answer.downcase.include?(guess.downcase)
      correct_value = true
      @correct_guesses << guess
      @all_guesses << guess
      index = -1
      @answer.each_char do |character|
        index += 1
        if character.downcase == guess
          @guesser_constructor[index] = character
        end #if
      end #do
    else
      @incorrect_guesses << guess
      @all_guesses << guess
      correct_value = false
    end #if @answer.include?(guess)
    @allowed_guesses -= 1
    correct_value
  end

  def already_guessed?(guess)
    @all_guesses.include?(guess)
  end

end #class

#INTERFACE

puts "Hello User 1 - what is the word or phrase your friend will be guessing?"
user1_input = gets.chomp
game = Wordplay.new(user1_input)
game.build_constructor

puts "Hello User 2. You'll be guessing:"
while !game.is_over
  puts "Phrase: #{game.guesser_constructor}"
  puts "You have #{game.allowed_guesses} guess attempts"
  if game.incorrect_guesses.length > 0
    puts "Incorrect Guesses: #{game.incorrect_guesses}"
  end
  puts "Enter your guesses one letter at a time. Or, if you think you know it, enter the entire."
  guess = gets.chomp
  if game.already_guessed?(guess)
    puts ""
    puts "You guessed that already silly!"
    puts ""
  else
    if guess.length == game.answer.length
      if guess == game.answer
        game.guesser_constructor = game.answer
        game.is_over = true
      else
        game.allowed_guesses -= 1
        puts ""
        puts "That's not right!"
        puts ""
      end #if guess == game.answer
    elsif guess.length > 1
      puts ""
      puts "That answer wasn't understood. If you're trying to guess the phrase, make sure you entered it exactly - spaces and punctuation included. Otherwise, enter one letter at a time."
      puts ""
    else
      correct = game.check_guess?(guess)
      if correct
        puts ""
        puts "Good job - that's correct. Keep going!"
        puts ""
      else
        puts ""
        puts "Oops. Try again!"
        puts ""
      end
    end #if guess == game.answer.length
    if game.answer == game.guesser_constructor || game.allowed_guesses == 0
      game.is_over = true
    end
  end #if game.already_guessed?

end #while !game.is_over

if game.answer == game.guesser_constructor
  puts "YOU DID IT! You guessed \"#{game.answer}\" with #{game.allowed_guesses} guesses remaining!"
  puts "Phrase: #{game.answer}"
  puts "Incorrect Guesses: #{game.incorrect_guesses}"
  puts "Correct Guesses: #{game.correct_guesses}"
end

# Pseudocode
# Define class wordplay.
# initialize and take an answer string, set to instance variable.
# initialize with empty arrays for correct guesses and incorrect guesses
# initialize with empty string guesser_constructor
# initialize with allowed_incorrect_guesses as the value of answer_string.length - 2
# initialize is_over to false.
# define a method for creating “guesser_builder”
# 	iterate through answer and push an underscore for every letter of the alphabet and push an identical character for every other symbol or space.
#
# define a method for check_guess
# correct
# 	check if ‘answer.contains?’ the guess. If not, allowed_incorrect_guesses - 1.
# 	shovel answer into incorrect_guesses
# 	shovel answer into all_guesses
# 	else iterate through ‘answer’ and replace underscores in gueser_builder for every correct guess
# 	shovel answer into correct_guesses and all_guesses
# INTERFACE
# Ask user 1 for the word or phrase to guess.
# initialize new game passing user response.
#
# while the game is not over, ask
# 	What is your next guess?
# 	assign response to guess
# 	run check_guess passing guess.
# end
#
# when game is over, check guesser builder to answer. If they match print
# You Won!
# You guessed:
# #answer
# in #number of guesses turns!
# Incorrect Guesses:
# Correct Guesses:
#
# if they do not match!
# You Lost!
# The answer was:
# answer
# Incorrect Guesses:
# Correct Guesses:
