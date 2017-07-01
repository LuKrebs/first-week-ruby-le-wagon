def colorful?(number)
  # Returning false if number isn't a number
  return false unless number.is_a?(Integer)
  # Return true if the number is equal 0 or 1
  return true if (number == 1) || number.zero?
  # Transforming an integer in an array of integers
  number = number.to_s.split("").map { |x| x.to_i }
  # Creating a new array with the products of the numbers
  b = number.map.with_index do |item, i|
    item * number[i.next] unless number[i.next].nil?
  end
  # Deleting the nil element
  b.delete(nil) if b.include?(nil)
  # Creating the products between all numbers in the array if the length > 2
  number[number.length] = number.reduce(:*) if number.length > 2
  # putting all the numbers in the same array
  b.each { |x| number.push(x) }
  # Detecting if the array have equal itens
  number.detect { |e| number.count(e) > 1 }.nil?
end
