def fizz_buzz(number)
  # TODO: return an array of integers, 'Fizz', 'Buzz' or 'FizzBuzz'
  fail ArgumentError, "#{number} should be greater than 1" if number < 1
  (1..number).map do |i|
    if (i % 3).zero? && (i % 5).zero?
      'FizzBuzz'
    elsif (i % 3).zero?
      'Fizz'
    elsif (i % 5).zero?
      'Buzz'
    else
      i
    end
  end
end
