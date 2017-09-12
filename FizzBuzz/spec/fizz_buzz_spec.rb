require 'fizz_buzz'

RSpec.describe FizzBuzz, "#Katayuno FizzBuzz" do

  # it "List the numbers from 1 to 100" do
  #   fizzBuzz = FizzBuzz.new
  #   expect(fizzBuzz.numbers.length).to eq (100)
  #   aux = 1
  #   fizzBuzz.numbers.each do |number|
  #     expect(number).to eq aux
  #     aux += 1
  #   end
  # end

  it "If the number is divisible by 3, write \"Fizz\" instead" do
      result = FizzBuzz.new.compute
      expect(result.length).to eq (100)
      [*1..100].each do |number|
        if number % 3 == 0
          expect(result[number-1]).to eq 'fizz'
        end
        if number % 5 == 0
          expect(result[number-1]).to eq 'buzz'
        end
      end
  end

end
