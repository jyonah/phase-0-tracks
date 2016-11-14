
# Define class wordplay.
# initialize and take an answer string, set to instance variable.
# initialize with empty arrays for correct guesses and incorrect guesses
# initialize with empty string guesser_constructor
# initialize with allowed_incorrect_guesses as the value of answer_string.length - 2
# initialize is_over to false.

ABC = "abcdefghijklmnopqrstuvwxyz"

class Wordplay

  attr_reader :answer, :correct_guesses, :incorrect_guesses, :allowed_guesses, :guesser_constructor, :all_guesses, :is_over
  # attr_accessor

  def initialize(answer)
    puts "Starting new game of Wordplay!"
    @answer = answer
    @correct_guesses = []
    @incorrect_guesses = []
    @all_guesses = []
    @guesser_constructor = ""
    @allowed_guesses = ((answer.length / 3) + 4)
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
    if @answer.downcase.include?(guess)
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


end #class

# game = Wordplay.new("Hello, I love you - won't you tell me your name?")
# game.build_constructor
# p game.check_guess?("h")
# p game.all_guesses
# p game.incorrect_guesses
# p game.allowed_guesses
# p game.guesser_constructor
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
