require_relative "coach_answer"

user_input = ""

while user_input.downcase != 'i am going to work right now!'
  puts "~> Talk with your coach, plase..."
  user_input = gets.chomp

  puts coach_answer(user_input)
  puts coach_answer_enhanced(user_input)
end
