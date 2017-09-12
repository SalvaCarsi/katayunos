class FizzBuzz

  attr_reader :numbers
  attr_reader :result

  def initialize
    @numbers = [*1..100]
    @result = []
    compute
  end

  def get index
    @result[index - 1]
  end

  private

  def compute
    @result = @numbers.map do |number|
      fizz_buzz_word = ''
      if number % 3 == 0 then fizz_buzz_word = 'fizz' end
      if number % 5 == 0 then fizz_buzz_word = "#{fizz_buzz_word}buzz" end

      if fizz_buzz_word == '' then number else fizz_buzz_word end
    end
  end
end
