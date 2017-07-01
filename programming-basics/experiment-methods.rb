# Write a method #get_rid_of_surrounding_whitespaces
# expect( get_rid_of_surrounding_whitespaces("  hey yo  ") ).to eq("hey yo")
# expect( get_rid_of_surrounding_whitespaces(" nice try!") ).to eq("nice try!")
def get_rid_of_surrounding_whitespaces(string)
  string.strip
end

# Write a method #belongs_to?
# it "should return true if the word is included in the string"
#    expect( belongs_to?("hey jude", "jude") ).to eq(true)
def belongs_to?(phrase, word)
  phrase.include?(word)
end

# Write a method #replace
# it "should correctly replace the letter in the string"
# expect( replace("casanova", "a", "o") ).to eq "cosonovo"
def replace(phrase, old_string, new_string)
  phrase.gsub(old_string, new_string) if phrase.include?(old_string)
end

# Write a method #divisible_by_two?
#  it "should return true if number is even"
#    expect( divisible_by_two?(6) ).to eq true
#  it "should return false if number is odd"
#    expect( divisible_by_two?(7) ).to eq false
def divisible_by_two?(number)
  number % 2 == 0
end

# Write a method #exactly_divide
# it "should compute the floating division" do
#   expect( exactly_divide(13, 4) ).to eq 3.25
def exactly_divide(number, divisor)
  number.to_f / divisor
end

# Write a method #random_subset
# TODO: return a random subset of an_array with size sample_size
# example: random_subset(('a'..'z').to_a, 4) => ["u", "q", "l", "t"]
def random_subset(array, size)
  array.shuffle[0,size]
end

# Write a method #randomize
# TODO: return a randomized copy of an_array
# example: randomize([1, 2, 3, 4]) => [2, 1, 4, 3]
def randomize(array)
  array.shuffle
end

# Write a method #ascending_order
# TODO: return a copy of an_array with elements in ascending order
# example: ascending_order([7, 3, 1, 6, 9]) => [1, 3, 6, 7, 9]
def ascending_order(array)
  array.sort
end
