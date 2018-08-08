# Baseline
# The program should ask the user for an operation (as a string symbol) and two numbers.
#
# Primary Requirements
# The program should use the input operation and two numbers to provide the result of applying the operation to the two numbers.
#
# The program should have support for these four operations: addition, subtraction, multiplication, and division.
# The program should accept both the name (add) and the symbol (+) for each possible operation.
# The program should handle unexpected user input


# Creating a simple method to explain each of the mathematical operators.
def explanation ()
  puts "\nBASIC MATHEMATICAL OPERATORS AND THEIR DEFINITIONS:"
  puts "1. Add (+) - addition, summation, plus, increase, total."
  puts "2. Subtract (-) - taking away, minus, less, difference, decrease, deduct."
  puts "3. Multiply (*) - aka multiplication, the product of, times."
  puts "4. Divide (/) - aka division, quotient, how many times goes into."
end

#Getting the user input on which type of mathematical operator they'd like to use.
puts "Welcome to Carly's Calculator."
explanation
print "\nWhich of the above mathematical operators would you like to choose:  Add(+), Subtract(-), Multiply(*), or Divide(/)?  "
operator = gets.chomp.downcase

#Allowing the user to choose their mathematical operator, and accounting for the possibility that they don't choose a valid option.  Offering a refresh of the tutorial.
until ["add", "subtract", "multiply", "divide", "+", "-", "*", "/"].include?(operator)
  print "That is not one of the valid mathematical operators!  Would you like to view a full explanation of the operators again? (yes or no)  "
  want_explanation = gets.chomp.downcase
    if want_explanation == "yes" || want_explanation == "sure"
      explanation
    end
  print "\nPlease choose choose either Add(+), Subtract(-), Multiply(*), or Divide(/):  "
  operator = gets.chomp.downcase
end

#Accounting for input as mathematical symbols, and changing those into the written version
if operator == "+"
  operator = "add"
elsif operator == "-"
  operator = "subtract"
elsif operator == "/"
  operator = "divide"
elsif operator == "*"
  operator = "multiply"
end

#Gathering the user input data of both numbers
print "Thank you!  Now choose the first number you'd like to use for your calculations: "
number_1 = gets.chomp.to_f

print "Great.  Please choose another number you'd like to use:  "
number_2 = gets.chomp.to_f

# Summarizing the given info
if operator == "add" || operator == "subtract" || operator == "multiply"
  puts "\nAwesome!  You chose to #{operator} #{number_1} and #{number_2}, and the result of that calculation is..."
# Accounting for the special case of dividing by 0
elsif operator == "divide" && number_2 == 0
  puts "\nAwesome!  You chose to divide #{number_1} by #{number_2}.  The result of that calculation has no solution, as numbers cannot be divided by zero!"
  exit
else
  puts "\nAwesome!  You chose to divide #{number_1} by #{number_2}, and the result of that calculation is..."
end

# Adding suspense...
sleep(2)

# Calculations.  Certainly not DRY... at least not yet.  Can loop through a Method or Hash?  Or Method inside a Method or Mathod using a Hash?
case operator
when "multiply"
  def multiply (first, second)
    return first * second
  end
puts multiply(number_1, number_2)

when "divide"
  def divide (first, second)
    return first / second
  end
puts divide(number_1, number_2)

when "add"
  def add (first, second)
    return first + second
  end
puts add(number_1, number_2)

when "subtract"
  def subtract (first, second)
    return first - second
  end
puts subtract(number_1, number_2)
end

