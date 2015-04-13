# rubocop
class Rubybuzz
  def both?(number)
    div_by(number, 3) && div_by(number, 5)
  end

  def none?(number)
    both?(number) || div_by(number, 3) || div_by(number, 5)
  end

  def say(number)
    item = 'Fizz' if div_by(number, 3)
    item = 'Buzz' if div_by(number, 5)
    item = 'FizzBuzz' if both?(number)
    item = number unless none?(number)
    item
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
