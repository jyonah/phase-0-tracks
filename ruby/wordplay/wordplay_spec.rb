require_relative 'wordplay'

describe Wordplay do
  let (:wordplay) {Wordplay.new("Hello, I love you - won't you tell me your name?")}

  it "creates a string of underscores, spaces, and punctuation to represent the answer" do
    expect(wordplay.answer).to eq "Hello, I love you - won't you tell me your name?"
    wordplay.build_constructor
    expect(wordplay.answer).to eq "*****, * **** *** - ***'* *** **** ** **** ****?"
  end
end
