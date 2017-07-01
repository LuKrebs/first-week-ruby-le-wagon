require_relative './age_in_days'

### Talking with the user ###
puts "What's your year of birth?"
birth_year = gets.chomp.to_i

puts "What's your month of birth?"
birth_month = gets.chomp.to_i

puts "Waht's your day of birth?"
birth_day = gets.chomp.to_i

puts 'Computing your age (with the most complicated algorithms)........'
sleep(3)

calculated_age = age_in_days(birth_day, birth_month, birth_year)
puts "You are #{calculated_age} days old... phew!"
