#x - The program adds numbers with both add and +
#x - The program subtracts numbers with both subtract and -
#x - The program adds numbers with both multiply and *
#x - The program adds numbers with both divide and /
#x - The program handles divide when attempting to divide by zero.
#x - The program handles erroneous input. For example the user might enter clown when asked to enter a number.
#x - The program also needs to handle erroneous operators.

# OPTIONAL ENHANCEMENTS
# x- Print out the formula in addition to the result, i.e. 2 + 2 = 4
# x- Add support for computing exponents (2^4 = 2 * 2 * 2 * 2 = 16).
# x- Add support for the modulo operator (10 % 3 = 1).
# x- Gracefully handle unexpected user input:
# -x What happens if the user input is nil (i.e., the user just pressed enter)?
# x- What happens if the user tries to add hotdog to elephant?
# x- Make your program know when it needs to return an integer versus a float.
# - Add support for parentheticals, i.e. 10 / (5 + 5) = 1.

# displays a blank line
def inserts_blank_line()
  return ""
end

# displays menu options
def prints_menu()
  return "You can use the following operators:\n
  ADD (+)
  SUBTRACT (-)
  MULTIPLY (*)
  DIVIDE (/)
  MODULO (%)
  EXPONENT (^)"
end

# verifies user entered a valid operator (input)
# will ask for new entry if invalid
# will return the valid operator choice (output)
def checks_input_operator(operator_choice)
  while operator_choice != "ADD" && operator_choice != "+" && operator_choice != "SUBTRACT" && operator_choice != "-" && operator_choice != "MULTIPLY" && operator_choice != "*" &&  operator_choice != "DIVIDE" && operator_choice != "/" && operator_choice != "MODULO" && operator_choice != "%" && operator_choice != "EXPONENT" && operator_choice != "^"
    puts inserts_blank_line()
    puts "Oops! Your entry was invalid. Please try again."
    puts inserts_blank_line()
    puts prints_menu()
    puts "Please enter a valid operator: "
    operator_choice = gets.chomp.upcase
  end
  return operator_choice
end

# verifies user entered a valid number (input)
# will ask for new entry if invalid
# will return the chosen number as a float (output)
def checks_input_number(num)
  # while num.to_i.to_s != num || num.to_f.to_s != num
  while num.to_f.to_s != num && num.to_i.to_s != num
    puts inserts_blank_line()
    puts "Oops! Your entry was invalid. Please enter a number."
    num = gets.chomp
  end
  return num.to_f
end

# determines how to display the printed numbers (as an int, float, or undefined)
def checks_final_form(num)
  if num.to_s.slice(-2..-1) == ".0"
    return num.to_i
  elsif num == Float::INFINITY
    return "undefined"
  else
    return num.to_f
  end
end

# adds the numbers
def adds(num_a, num_b)
  return num_a + num_b
end

# subtracts the numbers
def subtracts(num_a, num_b)
  return num_a - num_b
end

# multiplies the numbers
def multiplies(num_a, num_b)
  return num_a * num_b
end

# divides the numbers
def divides(num_a, num_b)
  return num_a / num_b
end

# return the remainder
def modulos(num_a, num_b)
  return num_a % num_b
end

# raises number to an exponent
def raises_exponent(num_a, num_b)
  return num_a ** num_b
end

# display program text
puts "HELLO AND WELCOME TO THE CALCULATOR!"
puts inserts_blank_line()
puts prints_menu()
puts inserts_blank_line()

# asks user for operator choice
# user input is passed to the validation method (in upper case)
puts "Please input the operator you would like to use (name or symbol):"
input_operator = checks_input_operator(gets.chomp.upcase)

# asks user for first number selection
# user input is passed to the validation method
puts "Please input the first number: "
num_a = checks_input_number(gets.chomp)

# asks user for first number selection
# user input is passed to the validation method
puts "Please input the second number: "
num_b = checks_input_number(gets.chomp)

puts inserts_blank_line()


puts "HERE IS YOUR RESULT: "

# determine which operation and related method to run
if input_operator == "MULTIPLY" || input_operator == "*"
  operator = "*"
  result = multiplies(num_a, num_b)
elsif input_operator == "DIVIDE" || input_operator == "/"
  operator = "/"
  result = divides(num_a, num_b)
elsif input_operator == "ADD" || input_operator == "+"
  operator = "+"
  result = adds(num_a, num_b)
elsif input_operator == "SUBTRACT" || input_operator == "-"
  operator = "-"
  result = subtracts(num_a, num_b)
elsif input_operator == "MODULO" || input_operator == "%"
  operator = "%"
  result = modulos(num_a, num_b)
elsif input_operator == "EXPONENT" || input_operator == "^"
  operator = "^"
  result = raises_exponent(num_a, num_b)
else
  "Oh no! Something went wrong. The program will quit now."
end

# display results as acceptable final form (int, float, or undefined)
puts "#{checks_final_form(num_a)} #{operator} #{checks_final_form(num_b)} = #{checks_final_form(result)}"
