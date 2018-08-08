# Calculator command line interface (CLI) that allows a user to perform simple arithmetic.

# Array of valid operators
operators = {"add" => "+", "subtract" => "-", "multiply" => "*", "divide" => "/"}

def list_operators(op_array)
  list_num = 0
  op_array.each do |key, value|
    puts "#{list_num += 1}.  #{key} (#{value}) "
  end
end

# List available operators
puts
puts "Welcome to the Calculator program! Which operator would you like to use?"
puts
list_operators(operators)

# Get input from operator
puts
puts "Please choose one operator (name or symbol):"
operator = gets.chomp

# Verify input as valid operator
until operators.has_key?(operator) || operators.has_value?(operator)
  puts "Sorry, that's not a valid operator"
  puts "Please choose one operator (name or symbol) from the following"
  list_operators(operators)
  operator = gets.chomp
end

# method to check for valid number entry
def check_num_entry(num)
  regex = /\A[+-]?\d+(\.[\d+])?\z/
  until regex.match(num)
    puts "Please enter a valid positive or negative number. Thank you!"
    num = gets.chomp
  end
end

# Ask for numbers
puts
puts "Please enter a number"
num_1 = gets.chomp
check_num_entry(num_1)

puts
puts "Please enter another number"
num_2 = gets.chomp
check_num_entry(num_2)

# Calculate result
case operator
  when "add", "+"
    result = num_1.to_f + num_2.to_f
  when "subtract", "-"
    result = num_1.to_f - num_2.to_f
  when "multiply", "*"
    result = num_1.to_f * num_2.to_f
  when "divide", "/"
    if num_2 == "0" || num_2 == "0.0"
      puts "Cannot divide by 0, please choose another number"
      num_2 = gets.chomp
      check_num_entry(num_2)
    end
    result = num_1.to_f / num_2.to_f
end

# Print result
puts
puts "The answer to #{num_1} #{operator} #{num_2} = #{result}"
puts

# Finish
puts "Thank you for using the Calculator Progam"
puts
