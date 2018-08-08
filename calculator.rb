# The program should use the input operation and two numbers to provide the result of applying the operation to the two numbers.
#
# The program should have support for these four operations: addition, subtraction, multiplication, and division.
# The program should accept both the name (add) and the symbol (+) for each possible operation.
# The program should handle unexpected user input

# method to obtain user input to calculate an expression of x and y
# takes value of X & Y, along with an operator and shovels into an array which the method returns
to_calculate = []

# tests input for typed string "exit", if it does, exit app
def test_for_exit(test)
  if test == "exit"
    exit
  end
end

def test_for_variables(test)
  until test !~ /[a-z]/ # check that test variable is a valid integer
    print "Invalid entry. Please enter a valid integer."
    test = gets.chomp.strip.downcase.to_s
    test_for_exit(test) # check that new entry is not 'exit'
  end
  return test
end

# method obtains input from user for variable X, the operator, and variable Y
def obtain_user_input()
  input = []
  print "X = "
  x_variable = gets.chomp.strip.downcase.to_s
  # test that variable is not exit or valid number/integer
  test_for_exit(x_variable)
  x_variable = test_for_variables(x_variable)
  input << x_variable.to_f
  print "Enter operator(+, -, *, /, ^, % or corresponding word): "
  operator = gets.chomp.strip.downcase.to_s
  test_for_exit(operator)
  # check that operator entered is valid operator
  until operator =~ /[\+\-*\/\^\%]/ || operator == "add" || operator ==  "subtract" || operator == "multiply" || operator == "divide" || operator == "exponent"|| operator == "raise" || operator == "modulo"
    print "Error. Enter operator(+,-,*,/, or corresponding word - add, subtract, multiply, divide, raise/exponent, or modulo): "
    operator = gets.chomp.strip.downcase.to_s
    test_for_exit(operator)
  end
  input << operator
  print "Y = "
  y_variable = gets.chomp.strip.downcase.to_s
  test_for_exit(y_variable)
  y_variable = test_for_variables(y_variable)
  input << (y_variable.to_f)
  return input # return array of X, operator, and Y, in that order
end

# create methods for calculator methods for each operator
def addition_operator(x_var, y_var)
  sum = x_var + y_var
  return sum
end

def subtraction_operator(x_var, y_var)
  sum = x_var - y_var
  return sum
end

def multiplication_operator(x_var, y_var)
  sum = x_var * y_var
  return sum
end

def exponent_operator(x_var, y_var)
  sum = x_var ** y_var
  return sum
end

def modulo_operator(x_var, y_var)
  sum = x_var % y_var
  return sum
end

def division_operator(x_var, y_var)
  if y_var == 0 # ensure that you do not divide by zero
    sum = "Not a Number"
    return sum
  else
    sum = x_var / y_var
    return sum
  end
end

# Output method: if statement determines what operator was used and runs appropriate calculator method for that operator to get final sum of the expression, which is outputted to user
def determine_output(operator, x_var, y_var)
  if operator == "+" || operator == "add"
    output = addition_operator(x_var, y_var)
  elsif operator == "-" || operator == "subtract"
    output = subtraction_operator(x_var, y_var)
  elsif operator == "*" || operator == "multiply"
    output = multiplication_operator(x_var, y_var)
  elsif operator == "/" || operator == "divide"
    output = division_operator(x_var, y_var)
  elsif operator == "^" || operator == "exponent" || operator == "raise"
    output = exponent_operator(x_var, y_var)
  elsif operator == "%" || operator == "modulo"
    output = modulo_operator(x_var, y_var)
  end
  if output % 1 == 0 # determine if output should be float or integer
    return output.to_i
  else
    return output.to_f
  end
end
# call method to receive user input, array generated in method is placed in an array to be calculated
puts "\n_***^ CALCULATOR ^***_"
puts "Enter a value for X & Y, and operator to be used"
puts "Enter 'exit', at any time to quit.\n\n"

# infintie loop until exit entered, will continue to caluclate X (operator) Y and print results.
loop do
to_calculate = obtain_user_input # input is placed in an array to be run through output method, X is in Index 0, operator in Index 1, and Y in Index 2, tribal knowledge!
print "X #{to_calculate[1]} Y = #{determine_output(to_calculate[1], to_calculate[0].to_f, to_calculate[2].to_f)}\n\n"
end
