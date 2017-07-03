def sum_odd_indexed(array)
  # TODO: computes the sum of elements at odd indexes (1, 3, 5, 7, etc.)
  #       You should make use Enumerable#each_with_index
  odd_array = []
  array.each_with_index { |item, index_number| odd_array.push(item) if index_number.odd? }
  # odd_array.inject(0) { |a, b| a + b }
  odd_array.reduce(:+)
end

def even_numbers(array)
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select
  array.select { |number| number.even? }
end

def short_words(array, max_length)
  # TODO: Take and array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject
  array.reject { |word| word.length > max_length }
end

def first_under(array, limit)
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find
  array.find { |x| x < limit }
end

def add_bang(array)
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
  array.map { |x| x << "!" }
end

def concatenate(array)
  array.join
end

def sorted_pairs(array)
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  #       You should make use of Enumerable#each_slice
  new_array = []
  array.each_slice(2) { |a| new_array.push(a.sort) }
  return new_array
end
