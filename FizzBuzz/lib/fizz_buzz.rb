class FizzBuzz

  def initialize
    @numbers = [*1..100]
  end

  def compute
    result = @numbers.map do |number|
      if number % 3 == 0
        'fizz'
      elsif number % 5 == 0
        'buzz'
      else
        number
      end
      # if number % 3 == 0 then 'fizz' else number end
      # if number % 5 == 0 then 'buzz' else number end
    end
    result
  end
end
