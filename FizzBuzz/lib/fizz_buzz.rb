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
      aux = ''
      if number % 3 == 0
        aux = 'fizz'
      end

      if number % 5 == 0
        aux = aux + 'buzz'
      end

      if aux == ''
        number
      else
        aux
      end
    end
  end
end
