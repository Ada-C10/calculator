# Jacquelyn Cheng
# Ada Cohort 10 Nodes
# Calculator
# https://github.com/Ada-C10/calculator
# 8/7/2018

=begin

Primary Requirements:
The program should use the input operation and two numbers to provide the
result of applying the operation to the two numbers.
√   The program should have support for these four operations: addition,
    subtraction, multiplication, and division.
√   The program should accept both the name (add) and the symbol (+) for each
    possible operation.
√   The program should handle unexpected user input

Optional Enhancements:
√   Print out the formula in addition to the result, i.e. 2 + 2 = 4
√   Add support for computing exponents (2^4 = 2 * 2 * 2 * 2 = 16).
√   Add support for the modulo operator (10 % 3 = 1).
√   Gracefully handle unexpected user input:
        What happens if the user input is nil (i.e., the user pressed enter)?
        What happens if the user tries to add hotdog to elephant?
√   Make your program know when it needs to return an integer versus a float.
X   Add support for parentheticals, i.e. 10 / (5 + 5) = 1.

Notes on further improvements to be made:
-   Would be great to be able to accept fractions too

=end

# flow of program:
#   welcome
#   ask for operators
#   validate operator
#   ask for number1
#   validate number1
#   ask for number 2
#   validate number 2
#   calculate formula
#   calculate answer
#   display formula and answer


# validate if the user input is a symbol or description of an operator
# return the corresponding operator or nil if invalid

def validate_operator_input(input)
  case input
    when "+", "add"
      return "+"
    when "-", "subtract"
      return "-"
    when "*", "multiply"
      return "*"
    when "/", "divide"
      return "/"
    when "^", "exponent"
      return "**"
    when "%", "remainder"
      return "%"
    else
      # method to ask for operator input
      return nil
    end
end
puts


#  ask the user to enter an operator until they enter something valid

def get_operator
  operator = nil
  while operator.nil? do
    puts "Choose an operation:"
    puts "  1. add(+)"
    puts "  2. subtract(-)"
    puts "  3. multiply(*)"
    puts "  4. divide(/)"
    puts "  5. exponent(^)"
    puts "  6. remainder(%)"
    puts
    print ">> Operator: "
    operator = validate_operator_input(gets.chomp)
    if operator.nil?
      puts
      puts "ERROR: Invalid input. Enter one of the words or symbols below."
      puts
    end
  end
  return operator
end


# floats: /\A[+-]?\d*\.{1}\d*+\Z/
#   - can start with zero or one + or -
#   - have zero or more digits before one decimal point
#   - have no more and no less than one decimal point
#   - end with zero or more digits after the decimal point
#   - could not figure out how to require at least one digit before our after
#     the decimal point

# integers: /\A[+-]?\d+\Z/
#   - can start with zero or one + or -
#   - end with at least one digit

# validate if the user input is a float, integer, or neither
# return the input as float or integer, nil if neither

def validate_numeric_input(input)
  if input == "." # if decimal point without digits
    # method to ask for numeric input
    return nil
  elsif !/\A[+-]?\d*\.{1}\d+\Z/.match(input).nil? # if float
    return input.to_f
  elsif !/\A[+-]?\d+\Z/.match(input).nil? # if integer
    return input.to_i
  else # if anything else
    # method to ask for numeric input
    return nil
  end
end


# ask the user to enter an operator until they enter something valid

def get_number
  number = nil
  while number.nil? do
    print ">> Enter a number: "
    number = validate_numeric_input(gets.chomp)
    if number.nil?
      puts
      puts "ERROR: Invalid input. Enter a whole or decimal number"
      puts
    end
  end
  return number
end


# returns a string representing the complete formula

def calculate_formula(operator, num1, num2)
  if operator == "**" && num2 > 1
    formula = "#{num1} "
    (num2-1).times do
      formula << "* #{num1} "
    end
    formula << "= "
  else
    formula = "#{num1} #{operator} #{num2} = "
  end
  return formula
end


# converts operator string to true operator and returns calculated answer
# could replace some of the calculations with num1.send(operator, num2)

def calculate_answer(operator, num1, num2)
  case operator
    when "+"
      return num1 + num2
    when "-"
      return num1 - num2
    when "*"
      return num1 * num2
    when "/"
      if num2 == 0
        return "undefined"
      elsif num2 > num1 || num1 % num2 != 0
        return num1.to_f / num2
      else
        return num1 / num2
      end
    when "**"
      return num1 ** num2
    when "%"
      return num1 % num2
  end
end


puts "-------------------------------------------------"
puts
puts "Welcome to the Calculator program!"
puts
num1 = get_number
puts
operator = get_operator
puts
num2 = get_number
puts
puts "Answer:"
print calculate_formula(operator, num1, num2)
print calculate_answer(operator, num1, num2)
puts
puts
puts "-------------------------------------------------"
puts

