puts "Welcome to the Calculator program!"

expression = ["add(+)", "subtract(-)", "multiply(*)", "divide(/)"]

expression.count.times do |i|
puts "#{i + 1}." + "#{expression[i]}"
end

prompt = "Which operator would you like to use: "
operator_error = "Incorrect operator"
number_error =  "Error - Numbers Only - Try Again"

def calculate_with_addition( num_one, num_two )
return num_one + num_two
end


def calculate_with_subtraction( num_one, num_two )
return num_one - num_two
end


def calculate_with_multiplication( num_one, num_two )
return num_one * num_two
end


def calculate_with_division( num_one, num_two )
return num_one / num_two
end
####################
in_progress = true

while in_progress
  in_progress = false

print prompt
chosen_operator = gets.chomp
 until chosen_operator  == "add" || chosen_operator  == "+" || chosen_operator  == "subtract" || chosen_operator  == "-" || chosen_operator  == "multiply" || chosen_operator  == "*" || chosen_operator  == "divide" || chosen_operator  == "/"  # change to case
  puts operator_error
  puts prompt
  chosen_operator = gets.chomp
end

print "Choose a number: "
first_number = gets.chomp.to_i
until first_number !~ /[0-9]+/
puts number_error
  first_number = gets.chomp
end

print "Choose another number: "
second_number = gets.chomp.to_i
until second_number !~ /[0-9]+/
  puts number_error
  second_number = gets.chomp
end

if chosen_operator == "add" || chosen_operator == "+"
  added_result = calculate_with_addition(first_number, second_number)
  puts "#{first_number} + #{second_number} = #{added_result}"
  puts "The answer is #{added_result}"

elsif chosen_operator == "subtract" || chosen_operator == "-"
  subtracted_result = calculate_with_subtraction(first_number, second_number)
  puts "#{first_number} - #{second_number} = #{subtracted_result}"
  puts "The answer is #{subtracted_result}"

elsif chosen_operator == "multiply" || chosen_operator == "*"
  multiplied_result = calculate_with_multiplication(first_number, second_number)
  puts "#{first_number} * #{second_number} = #{multiplied_result}"
  puts "The answer is #{multiplied_result}"

elsif chosen_operator == "divide" || chosen_operator == "/"
  divided_result = calculate_with_division(first_number, second_number)
  puts "#{first_number} / #{second_number} = #{divided_result}"
  puts "The answer is #{divided_result}"

else
  puts error
  puts prompt
  chosen_operator = gets.chomp
end

puts "Do you want to continue?"
continue_program = gets.chomp

if continue_program == "yes" || continue_program == "YES" || continue_program == "Yes" || continue_program == "y"
  puts "\n"
  in_progress = true
else
  puts "\n"
  in_progress = false
end

end
