require "spec_helper"

RSpec.describe Stringer do
  # it "has a version number" do
  #   expect(Stringer::VERSION).not_to be nil
  # end
  #
  # it "does something useful" do
  #   expect(false).to eq(true)
  # end

  it "concatenates undefined number of strings with a space" do
    expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
  end

  it "has a method called minify that should shorten a string to the max length and add a '...' to the end" do
    expect(Stringer.minify("Hello, I'm learning how to create a gem", 10)).to eq("Hello, I'm...")
  end

  it "has a method called replacify that iterates over a string and replaces each instance of that word with the replacement provided" do
      expect(Stringer.replacify "I can't do this", "can't", "can").to eq("I can do this")
  end

  it "has a method called tokenize that iterates over a string and adds each word into an array, then returns that array" do
      expect(Stringer.tokenize "I love to code").to eq(["I", "love", "to", "code"])
  end

  it "has a method called removify that removes each instance of the second parameter within the original string" do
      expect(Stringer.removify "I'm not a developer", "not").to eq("I'm a developer")
  end
end
