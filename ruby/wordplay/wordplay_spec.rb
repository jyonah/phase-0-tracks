require_relative 'wordplay'

describe Wordplay do
  let (:wordplay) {Wordplay.new("Hello, I love you - won't you tell me your name?")}

  it "creates a string of asterisks, spaces, and punctuation to represent the answer." do
    expect(wordplay.answer).to eq "Hello, I love you - won't you tell me your name?"
    expect(wordplay.guesser_constructor).to eq ""
    wordplay.build_constructor
    expect(wordplay.guesser_constructor).to eq "*****, * **** *** - ***'* *** **** ** **** ****?"
  end

  # it "checks a users geuess against the answer" do
  #   expect
  # end

end
