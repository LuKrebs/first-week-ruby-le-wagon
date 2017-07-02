def sum_recursive(min, max)
  return -1 if min > max
  (min..max).to_a.inject(0) { |sum, number| sum + number }
end
