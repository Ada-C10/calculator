# Unit 1 - Ruby Fundamentals
# Class Project - August 7, 2018
# Calculator

# Calculator operator array
operator_options = [
  "add", "+", "subtract", "-", "multiply", "*", "divide", "/"
]

# Intro text to user
puts "Welcome to the Calculator program!"
puts "Which operator would you like to use?"
puts "1. add (+)"
puts "2. subtract (-)"
puts "3. multiply (*)"
puts "4. divide (/)"
# puts "5. modulo (%)"
puts "Please enter the name or symbol of the desired operator."

# Gets user input for operator and numbers
print "Operator: "
input = gets.chomp

# Reprompt user until input is one of operators in operator array
until operator_options.include? input
  puts "Please input the name or symbol of a valid operator."
  input = gets.chomp
end

operator = input

# Gets user input for numbers to calculate
number_reprompt = "Please enter only numeric characters. "

# def get_valid_number(number_variable, ordinal)
#   print "#{ordinal} number: "
#   number_variable = gets.chomp
#   until number_variable =~ /\d/
#     puts number_reprompt
#     print "#{ordinal} number: "
#     number_variable = gets.chomp
#   end

print "First number: "
first_num = gets.chomp
  until first_num =~ /\d/
    puts number_reprompt
    print "First number: "
    first_num = gets.chomp
  end
first_num = first_num.to_f

print "Second number: "
second_num = gets.chomp
  until second_num =~ /\d/
    puts number_reprompt
    print "Second number: "
    second_num = gets.chomp
  end
second_num = second_num.to_f

# Define method for each operator
def add(first_num, second_num)
  return first_num + second_num
end

def subtract(first_num, second_num)
  return first_num - second_num
end

def multiply(first_num, second_num)
  return first_num * second_num
end

def divide(first_num, second_num)
  return first_num / second_num
end

# def to_power_of(first_num, second_num)
#   second_num.times do
#     first_num =* first_num
# end

# Case statement to link input to defined operator method and invoke method to get total
case operator
when "add", "+"
  total = add(first_num, second_num)
  operator = "+"
when "subtract", "-"
  total = subtract(first_num, second_num)
  operator = "-"
when "multiply", "*"
  total = multiply(first_num, second_num)
  operator = "*"
when "divide", "/"
  if second_num != 0
    total = divide(first_num, second_num)
  # If second number is zero, do not invoke method. Assign zero message to total.
  elsif second_num == 0
    total = "undefined (Division by zero)"
  end
  operator = "/"
end

# Print the formula and total
puts "#{first_num} #{operator} #{second_num} = #{total}"



# Add support for computing exponents (2^4 = 2 * 2 * 2 * 2 = 16).
# Add support for the modulo operator (10 % 3 = 1).
# Make your program know when it needs to return an integer versus a float.
# Add support for parentheticals, i.e. 10 / (5 + 5) = 1.



# Addison: for determining if float or not, run math as float. at end do modulo to decide if display
#                   num % 1 == 0   45 / 1 = 45 r0
#    Could also do  num % num == 0   45 / 45 = 1 r0
# Melissa: method for user validation
