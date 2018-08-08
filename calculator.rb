# Welcome message for user
puts "Welcome to the Ada Calculator!"
puts "These are the following choices:"
puts "1. add(+)"
puts "2. subtract(-)"
puts "3. multiply(*)"
puts "4. divide(/)"
puts "Please choose an operand:"

# Accepting user choice (case insensitive)
operand = gets.chomp.downcase

# Ensuring user is choosing a valid operation
until ["add", "+", "subtract", "-", "multiply", "*", "divide", "/"].include? (operand) do
  puts "Please enter a valid operand"
  operand = gets.chomp.downcase
end

# Asking user to input values to be used in calculations
puts "Please enter the first value: "
first_value = gets.chomp.to_f

# Insert logic to ensure first_value entered is a number

puts "Please enter the second value: "
second_value = gets.chomp.to_f

# Insert logic to ensure second_value entered is a number

# Defining methods for each operand
def addittion(x, y)
  return (x + y)
end

def subtraction(x, y)
  return (x - y).to_f
end

def multiplication(x, y)
  return (x * y).to_f
end

def division (x , y)
  # Insert conditional: If y == 0, then print message "Cannot divide by zero" and enter a while loop that states while y == 0, keep asking user to input a valid value. When y != 0, return (x / y). Else, return (x / y)
  return (x / y).to_f
end

# Determining which method to invoke depending on the operand chosen by the user
if operand == "add" || operand == "+"
  puts "Answer: #{first_value} + #{second_value} = #{addittion(first_value, second_value)}"
elsif operand == "subtract" || operand == "-"
  puts "Answer: #{first_value} - #{second_value} = #{subtraction(first_value, second_value)}"
elsif operand == "multiply" || operand == "*"
  puts "Answer: #{first_value} * #{second_value} = #{multiplication(first_value, second_value)}"
elsif operand == "divide" || operand == "/"
  puts "Answer: #{first_value} / #{second_value} = #{division(first_value, second_value)}"
end
