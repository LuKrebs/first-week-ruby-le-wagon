require_relative "./compute_name"

puts "What's your first name?"
user_first_name = gets.chomp

puts "What's your middle name?"
user_middle_name = gets.chomp

puts "What's your last name?"
user_last_name = gets.chomp

user_full_name = compute_name(user_first_name, user_middle_name, user_last_name)

puts "Hello #{user_full_name}! Nice to see you here! :)"
