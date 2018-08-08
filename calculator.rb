##### Methods  #####
# Add option to enter floats
# Validating user entered a number
def validate_number(number)
  until number.to_i.to_s == number
    puts "Please enter a number."
    number = gets.chomp
  end
    return number = number.to_i
end

# Addition method
def addition(num1, num2)
  return num1 + num2
end

# Subtraction method
def subtraction(num1, num2)
  return num1 - num2
end

# Multiplication method
def multiplication(num1, num2)
  return num1 * num2
end

# Exponent method
def pow(base, power)
  return base ** power
end

# Division method
def division(num1, num2)
  # Check  that user did not enter 0 for num2
  until num2 != 0
    puts "Sorry, we cannot divide by 0. Please enter a new number."
    num2 = gets.chomp
    num2 = validate_number(num2)
  end

  # Make sure it's returning a float
  return num1.to_f / num2
end

# Modulo method
def modulo(num1, num2)
  return num1 % num2.to_f
end

# Method to show options
def show_options(options)
  # Setting iterator to start at 0
  i = 1
  # Showing option words
  options.each do |option|
    if options.index(option).even?
      puts "#{i}. #{option}"
      i += 1
    end
  end
end

# Getting result via operation chosen and numbers entered
def calculate(operation, first_number, second_number)
  case operation
    when "add", "+"
      # When addition, add
      return addition(first_number, second_number)
    when "subtract", "-"
      # When subtraction, subtract
      return subtraction(first_number, second_number)
    when "multiply", "*"
      # When multiplication, multiply
      return multiplication(first_number, second_number)
    when "divide", "/"
      # When division, divide
      return division(first_number, second_number)
      # When exponent, do base * power
    when "exponent", "**"
      return pow(first_number, second_number)
      # When modulo, modulo
    when "modulo", "%"
      return modulo(first_number, second_number)
  end
end

# Choosing what symbol to add to final message
def message_symbol(operation)
  case operation
    when "add", "+"
      # When addition, return +
      return "+"
      # When subtraction, return -
    when "subtract", "-"
      return "-"
      # When multiplication, return *
    when "multiply", "*"
       return "*"
    # When division, return /
    when "divide", "/"
      return "/"
    # When exponent, return **
    when "exponent", "**"
      return "**"
    # When modulo, return %
    when "modulo", "%"
      return "%"
  end
end

##### End of Methods #####

# Welcome message
puts "Welcome to the calculator program."
puts "Please enter what operation you'd like to do (name or symbol)"

# Creating array of valid input
options = %w(add + subtract - multiply * divide / exponent ** modulo %)

# Showing options
show_options(options)

# Getting user input for operation
chosen_operation = gets.chomp.downcase

# Validating user input for operation
until options.include?(chosen_operation)
  puts "Please choose a valid option"
  # Showing options
  show_options(options)
  chosen_operation = gets.chomp.downcase
end

# Getting numbers
puts "Please enter the first number."
number_one = gets.chomp
# Validating entry is a number
number_one = validate_number(number_one)

puts "Please enter the second number."
number_two = gets.chomp
# Validating entry is a number
number_two = validate_number(number_two)

# Getting result of operation
result = calculate(chosen_operation, number_one, number_two)

# Building result message
message = "#{number_one} "
# Updating message with appropriate symbol
message += message_symbol(chosen_operation)
# Updating message with second number and the result
message += " #{number_two} = #{result}"
# Printing message
puts message
