# Write a methodo #sum_numbers
def sum_numbers(min, max)
  max > min ? (min..max).to_a.reduce(:+) : -1
end
