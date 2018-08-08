# The program should use the input operation and two numbers
# to provide the result of applying the operation to the two numbers

# The program should have support for these four operations: addition,
# subtraction, multiplication, and division

# The program should accept both the name (add) and the symbol
# (+) for each possible operation

# The program should handle unexpected user input

# Print operators options method
def print_operator_options()
  puts "1. add(+)"
  puts "2. subtract(-)"
  puts "3. multiply(*)"
  puts "4. divide(/)"
  puts "5. modulo(%)"
  puts "6. exponential(^)"
  puts
end


# Addition method
def add_numbers(num1, num2)
  return num1 + num2
end

# Subtraction method
def subtract_numbers(num1, num2)
  return num1 - num2
end

# Multiplication method
def multiply_numbers(num1, num2)
  return num1 * num2
end

# Division method
def divide_numbers(num1, num2)
  return num1 / num2
end

# Modulo method
def modulo_numbers(num1, num2)
  integer_division = (num1 / num2) * num2
  return num1 - integer_division
end

# Exponential method
def raise_number_to_power(num1, num2)
  return num1 ** num2
end

# Welcome message, ask user for operator (name or symbol)
puts
puts "Welcome to the Calculator program! Which operator would you like to use? "
print_operator_options()

print "Please choose one operator(name or symbol): "
user_symbol = gets.chomp.strip.downcase

symbols = [
  "add", "+", "subtract", "-", "multiply", "*",
  "divide", "/", "modulo", "%", "exponential", "^"
]

# Check to make sure user input matches the name or symbol operators
until symbols.include?(user_symbol)
  puts "Sorry, '#{user_symbol}' is an invalid input"
  print "Please enter at least one operator(name or symbol): "
  user_symbol = gets.chomp.strip.downcase
end

puts
puts "Thank you! Let's do some math!"
puts

print "Please enter your first number: "
first_number = gets.chomp

# Check to get digits entered from user for first number
until first_number.match?(/^(?=.*[\d])/) ||
  first_number.match?(/^(?=.*[-])(?=.*[\d])/)
  # '?=pat' positive lookahead assertion to check if there is at least
  # one or more digits in the string (starting from beginning of line)
  # including the symbol '-' to make sure negative numbers work also
  puts "Hm, something went wrong..."
  print "Please enter your first number: "
  first_number = gets.chomp
end

first_number = first_number.to_i

# Check to get digits entered from user for second number
print "Please enter your second number: "
second_number = gets.chomp

until second_number.match?(/^(?=.*[\d])/) ||
  second_number.match?(/^(?=.*[-])(?=.*[\d])/)
  puts "Hm, something went wrong..."
  print "Please enter your second number: "
  second_number = gets.chomp
end

second_number = second_number.to_i

puts

# Output message as string, based on the symbols entered by user
case user_symbol
  when "add", "+"
    sum = add_numbers(first_number, second_number)
    puts "#{first_number} + #{second_number} = #{sum}"

  when "subtract", "-"
    difference = subtract_numbers(first_number, second_number)
    puts "#{first_number} - #{second_number} = #{difference}"

  when "multiply", "*"
    product = multiply_numbers(first_number, second_number)
    puts "#{first_number} * #{second_number} = #{product}"

  when "divide", "/"
    if second_number == 0
      puts "Undefined - cannot divide a number by zero"
    else
      quotient = divide_numbers(first_number, second_number)
      puts "#{first_number} / #{second_number} = #{quotient}"
    end

  when "modulo", "%"
    remainder = modulo_numbers(first_number, second_number)
    puts "#{first_number} % #{second_number} = #{remainder}"

  when "exponential", "^"
    power = raise_number_to_power(first_number, second_number)
    puts "#{first_number} ^ #{second_number} = #{power}"
end

puts
puts
