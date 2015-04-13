# Simple fizzbuzz
class Rubybuzz
  def say(number)
    return 'FizzBuzz' if div_by(number, 3) && div_by(number, 5)
    return 'Fizz' if div_by(number, 3)
    return 'Buzz' if div_by(number, 5)
    number
  end

  def play(max)
    list = []
    1.upto(max) { |item| list << say(item) }
    list
  end

  private

  def div_by(number, divisor)
    number % divisor == 0
  end
end
