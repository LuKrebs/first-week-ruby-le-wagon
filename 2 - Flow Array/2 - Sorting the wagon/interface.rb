require_relative './sorting_the_wagon'

puts "Type a student name:"
array_of_students = []
user_input = nil

while user_input != ""
  user_input = gets.chomp
  array_of_students.push(user_input) if user_input != ""
  puts "Type another student name or press enter to finish:" if user_input != ""
end

my_students = wagon_sort(array_of_students)
puts "Congratulations! Your Wagon has #{my_students.length} students:"
text = my_students[0, my_students.length - 1].join(", ")
puts "- #{text} and #{my_students.last}"
