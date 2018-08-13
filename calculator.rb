# welcome message
puts "welcome to the Calculator program! which operator would you like to use?
  1. add(+)
  2. subtract(-)
  3. multiply(*)
  4. divide(/)
  5. mod(%)
  6. exponents(^)
please choose one operator(name of symbol):"

answer = ""
# get user input
operator = gets.chomp
valid_operations = %W(add subtract multiply divide mod exponents + - * / % ^)

# verify if input was an operation
until valid_operations.include?(operator)
  puts "incorrect operator, please try again"
  operator = gets.chomp
end

# verify if input is a number
def verify_number(num)
  # if if does not have a digit a period or white space, try again
  while num =~ /[^.\d]/ || num == ""
    puts "you did not entered a number, please try again:"
    num = gets.chomp
  end
  # convert to integer or float
  if num =~ /\./
    return num.to_f
  else
    return num.to_i
  end
end

puts "please enter two number:"
print "number 1:\t"
a = verify_number(gets.chomp)

print "number 2:\t"
b = verify_number(gets.chomp)

# print statement
def printing(num1, num2, operator, answer)
  if answer.to_s.length > 4
    # limit number of decimal points to two
    return puts "#{num1} / #{num2} = #{"%.2f" % answer}"
  else
    puts "#{num1} #{operator} #{num2} = #{answer}"
  end
end

# substract
def subtract(num1, num2)
  answer = num1 - num2
  return answer
end

# addition
def add(num1, num2)
  answer = num1 + num2
  return answer
end

# multiply
def multiply(num1, num2)
  answer = num1 * num2
  return answer
end

# divide
def divide(num1, num2)
  if num1 == 0 || num2 == 0
    return puts "you can't divide by zero, try again!"
  # return float when answer is a decimal example 5 / 2
  elsif num1 % 2 != 0 || num2 % 2 != 0
    num1_f = num1.to_f
    num2_f = num2.to_f
    answer = num1_f / num2_f
  else
    answer = num1 / num2
  end
end

# mod
def mod(num1, num2)
  if num1 == 0 || num2 == 0
    return puts "you can't mod by zero, try again!"
  else
    return num1 % num2
  end
end

# power
def pow(base, power)
  return base ** power
end

# do operator and return result
case operator
when "add","+"
  operator = "+"
  answer = add(a, b)
when "subtract", "-"
  operator = "-"
  answer = subtract(a, b)
when "multiply", "*"
  operator = "*"
  answer = multiply(a, b)
when "divide", "/"
  operator = "/"
  answer = divide(a, b)
when "mod","%"
  operator = "%"
  answer = mod(a, b)
when "exponents","^"
  operator = "^"
  answer = pow(a, b)
end

# print statement
printing(a, b, operator, answer)
