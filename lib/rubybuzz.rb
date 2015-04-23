def loop(max)
  array = []
  (1..max).each do |number|
    word = ''
    word += 'Fizz' if number % 3 == 0
    word += 'Buzz' if number % 5 == 0
    result = word.empty? ? number : word
    array << result
  end
  array
end
