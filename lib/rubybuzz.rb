# rubocop
class Rubybuzz
  def say(number)
    return 'FizzBuzz' if both?(number)
    return 'Fizz' if div_by(number, 3)
    return 'Buzz' if div_by(number, 5)
    return number unless none?(number)
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

  def both?(number)
    div_by(number, 3) && div_by(number, 5)
  end

  def none?(number)
    both?(number) || div_by(number, 3) || div_by(number, 5)
  end
end
