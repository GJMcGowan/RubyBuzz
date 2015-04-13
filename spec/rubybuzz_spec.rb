require 'rubybuzz'

describe Rubybuzz do
  context 'it can say the words' do
    it '"Fizz" when divisible by 3' do
      expect(subject.say(3)).to eq('Fizz')
    end

    it '"Buzz" when divisible by 5' do
      expect(subject.say(5)).to eq('Buzz')
    end

    it '"FizzBuzz" when divisible by both' do
      expect(subject.say(15)).to eq('FizzBuzz')
    end

    it 'returns the original number when none of the above apply' do
      expect(subject.say(7)).to eq(7)
    end
  end

  context 'it can return a correct sequence' do
    it 'returns 1 to 5 correctly' do
      array = [1, 2, 'Fizz', 4, 'Buzz']
      expect(subject.play(5)).to eq(array)
    end

    it 'returns 1 to 20 correctly' do
      array = [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz', 11,
               'Fizz', 13, 14, 'FizzBuzz', 16, 17, 'Fizz', 19, 'Buzz']
      expect(subject.play(20)).to eq(array)
    end
  end
end
