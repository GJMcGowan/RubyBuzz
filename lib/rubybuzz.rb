# rubocop
class Rubybuzz
  def fizz?(number)
    div_by(number, 3)
  end

  def buzz?(number)
    div_by(number, 5)
  end

  def both?(number)
    fizz?(number) && buzz?(number)
  end

  def none?(number)
    both?(number) || buzz?(number) || fizz?(number)
  end

  def say(number)
    item = 'Fizz' if fizz?(number)
    item = 'Buzz' if buzz?(number)
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
