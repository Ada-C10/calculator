# method to check if user input is a number
def number_check(input)
  if input.to_i.to_s == input
    number = input.to_i
  elsif input.to_f.to_s == input
    number = input.to_f
  else
    print "Please provide a valid number: "
    number = gets.chomp
  end
  return number
end

# methods for each operation
def addition(num1, num2)
  result = num1 + num2
  return result
end

def subtraction(num1, num2)
  result = num1 - num2
  return result
end

def multiplication(num1, num2)
  result = num1 * num2
  return result
end

def division(num1, num2)
  result = num1.to_f / num2.to_f
  return result
end

def exponential(num1, num2)
  result = num1 ** num2
  return result
end

def modulo(num1, num2)
  result = num1 % num2
  return result
end

# determine which operation to run
puts "Welcome to the Calculator Program!"
puts "You have the following operators to choose from:"
puts "1. add(+)"
puts "2. subtract(-)"
puts "3. multiply(*)"
puts "4. divide(/)"
puts "5. exponent(^)"
puts "6. modulo(%)"
print "Please provide the name or symbol of the operator: "
operator = gets.chomp

until operator == "add" || operator == "+" || \
  operator == "subtract" || operator == "-" || \
  operator == "multiply" || operator == "*" || \
  operator == "divide" || operator == "/" || \
  operator == "exponent" || operator == "^" || \
  operator == "modulo" || operator == "%"
  print "That's an invalid selection \
  Please provide the name or symbol of the operator: "
  operator = gets.chomp
end

# ask user for 2 numbers
print "Please provide a number to perform the operator on: "
first_num = gets.chomp
first_num = number_check(first_num)

while first_num.class == String
  first_num = number_check(first_num)
end

print "Please provide a second number: "
second_num = gets.chomp
second_num = number_check(second_num)

while second_num.class == String
  second_num = number_check(second_num)
end

# perform operation
case operator
  when "add", "+"
    print "#{first_num} + #{second_num} = "
    puts addition(first_num, second_num)
  when "subtract", "-"
    print "#{first_num} - #{second_num} = "
    puts subtraction(first_num, second_num)
  when "multiply", "*"
    print "#{first_num} * #{second_num} = "
    puts multiplication(first_num, second_num)
  when "divide", "/"
    if second_num == 0
      puts "Sorry, you can't divide by zero."
    else
      print "#{first_num} / #{second_num} = "
      puts division(first_num, second_num)
    end
  when "exponent", "^"
    print "#{first_num} ^ #{second_num} = "
    puts exponential(first_num, second_num)
  when "modulo", "%"
    print "#{first_num} % #{second_num} = "
    puts modulo(first_num, second_num)
end
