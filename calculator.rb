# SIMPLE CALCULATOR
# CREATED BY: LIZ JOHNSON
# LAST EDITED: AUGUST 7, 2018
#############################
def check_op (oper)
  if oper == 'add' || oper == '+'
    puts "+ + Let's add 'em up! + +"
    return operator = '+'
  elsif oper == 'subtract' || oper == '-'
    puts "- - Let's subtract! - -"
    return operator = '-'
  elsif oper == 'multiply' || oper == '*'
    puts "* * It's time to multiply! * *"
    return operator = '*'
  elsif oper == 'divide' || oper == '/'
    puts "/ / Let's divide 'em up! / /"
    return operator = '/'
  elsif oper == 'exponent' || oper == '**'
    puts "^ ^ Let's power 'em up! ^ ^"
    return operator = '**'
  elsif oper == 'remainder' || oper == '%'
    puts "% % Let's find the remainder! % %"
    return operator = '%'
  end
end


# method to check for valid number entry
def check_valid (num)
  # repeat validation until proper numeric entry from user
  # \A[-+]? match upto 1 - or + sign at start of string
  # [\d]* match any number of digits
  # \.? match up to 1 .
  # [\d]+ match 1 or more digits
  until num =~ /\A[-+]?[\d]*\.?[\d]+$/ && num =~ /\.?/ && num !~ /[a-zA-Z]/
    print "Invalid entry, please enter a numeric: "
    num = gets.chomp
  end
  return num
end

# method to check numeric type of string entry by user and convert
def check_type (num)
  # convert to float if validated number contains a decimal
  if num =~ /\./
    return num = Float(num)
  else
    return num = Integer(num)
  end
end

# method to calculate results
# INPUT: n1 = user's first number => 2
#        n2 = user's second number => -5
#        operation = user entered operator => '+'
# OUTPUT: answer => -3
def mathy(n1, n2, operation)
  answer = n1.send(operation, n2).round(4)
  return answer
end


###################################
# Get user input on operation
puts "Welcome to the Ruby Calculator!"
puts "All answers will be rounded to 4 decimal places."
puts "The following operations are possible: "
puts "> \tadd or +"
puts "> \tsubtract or -"
puts "> \tmultiply or *"
puts "> \tdivide or / "
puts "> \texponent or **"
puts "> \tremainder or %"
puts '=' * 40
print "Enter the operation to perform (input may be symbol or operator name): "
oper = gets.chomp.downcase
# array of valid entry types
valid_ops = ['add', '+', 'subtract', '-', 'multiply', '*', 'divide', '/', 'exponent', '**', 'remainder', '%']
# loop force ensure valid user input for operator
until valid_ops.include?(oper)
  print "Invalid input. Please enter an operator as shown above (e.g. subtract): "
  oper = gets.chomp
end
operator = check_op(oper)
puts "=" * 40
# determine operator

# Get user's 1st number
print "Please enter your first number: "
num1 = gets.chomp
# invoke method to check and force valid numeric entry
num1 = check_valid(num1)
# invoke method to convert user input string object to float or int
num1 = check_type(num1)

# Get user's 2nd number
print "Please enter your second number: "
num2 = gets.chomp
num2 = check_valid(num2)
num2 = check_type(num2)

# handle division by 0
if num2 == 0 && operator == '/'
  puts "Woah there! Unacceptable!!! Any number divided by 0 is UNDEFINED!!"
  exit
end


# convert one number to float to get conventional division => e.g. 5/2 = 2.5
if operator == '/'
  num1 = num1.to_f
end


# invoke method
answer = mathy(num1, num2, operator)
puts "#{num1} #{operator} #{num2} = #{answer}"
puts "\n\n"
