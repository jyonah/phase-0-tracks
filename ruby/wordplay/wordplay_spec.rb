require_relative 'wordplay'

describe Wordplay do
  let (:wordplay) {Wordplay.new("Hello, I love you - won't you tell me your name?")}

  it "creates a string of asterisks, spaces, and punctuation to represent the answer." do
    expect(wordplay.answer).to eq "Hello, I love you - won't you tell me your name?"
    expect(wordplay.guesser_constructor).to eq ""
    wordplay.build_constructor
    expect(wordplay.guesser_constructor).to eq "*****, * **** *** - ***'* *** **** ** **** ****?"
  end

  it "checks a users incorrect geuess against the answer" do
    #Initialize Check
    expect(wordplay.answer).to eq "Hello, I love you - won't you tell me your name?"
    wordplay.build_constructor
    expect(wordplay.guesser_constructor).to eq "*****, * **** *** - ***'* *** **** ** **** ****?"
    expect(wordplay.incorrect_guesses).to eq []
    expect(wordplay.correct_guesses).to eq []
    expect(wordplay.allowed_guesses).to eq 20
    #Guess Z
    expect(wordplay.check_guess?("z")).to eq false
    expect(wordplay.guesser_constructor).to eq "*****, * **** *** - ***'* *** **** ** **** ****?"
    expect(wordplay.incorrect_guesses).to eq ["z"]
    expect(wordplay.correct_guesses).to eq []
    expect(wordplay.allowed_guesses).to eq 19
  end

  it "checks a users correct guess against the answer." do
    #Initialize Check
    expect(wordplay.answer).to eq "Hello, I love you - won't you tell me your name?"
    wordplay.build_constructor
    expect(wordplay.guesser_constructor).to eq "*****, * **** *** - ***'* *** **** ** **** ****?"
    expect(wordplay.incorrect_guesses).to eq []
    expect(wordplay.correct_guesses).to eq []
    expect(wordplay.allowed_guesses).to eq 20
    #Guess "o"
    expect(wordplay.check_guess?("o")).to eq true
    expect(wordplay.guesser_constructor).to eq "****o, * *o** *o* - *o*'* *o* **** ** *o** ****?"
    expect(wordplay.incorrect_guesses).to eq []
    expect(wordplay.correct_guesses).to eq ["o"]
    expect(wordplay.allowed_guesses).to eq 19
  end

  it "checks if a user has already guessed a letter previously." do
    expect(wordplay.answer).to eq "Hello, I love you - won't you tell me your name?"
    wordplay.build_constructor
    expect(wordplay.all_guesses).to eq []
    wordplay.check_guess("o")
    expect(wordplay.all_guesses).to eq ["o"]
    epxect(wordplay.already_guessed?).to eq false
  end

end
