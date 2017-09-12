require 'fizz_buzz'

RSpec.describe FizzBuzz, "#Katayuno FizzBuzz" do

  it "List the numbers from 1 to 100" do
    fb = FizzBuzz.new
    expect(fb.numbers.length).to eq (100)
    expect(fb.numbers[0]).to eq 1
    expect(fb.numbers[99]).to eq 100
  end

  it "Writes fizz if the number is divisible by 3" do
      fb = FizzBuzz.new
      expect(fb.get(3)).to eq 'fizz'
      expect(fb.get(6)).to eq 'fizz'
  end

  it "Writes buzz if the number is divisible by 5" do
    fb = FizzBuzz.new
    expect(fb.get(5)).to eq 'buzz'
    expect(fb.get(10)).to eq 'buzz'
  end

  it "Writes fizzbuzz if the number is divisible by 3 and 5 simoultaneously" do
    fb = FizzBuzz.new
    expect(fb.get(15)).to eq 'fizzbuzz'
    expect(fb.get(30)).to eq 'fizzbuzz'
  end

end
