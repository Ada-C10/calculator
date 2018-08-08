# Semret Nicodimos
# Calculator project
# 8/7/2018

# Welcome message to the user

puts "Welcome to the Calculator Program! Which mathematical operations would you like to practice today?"
puts "1. add(+)
2. subtract(-)
3. multiply(*)
4. divide(/)"
puts "Please choose one operation(name or symbol): "
operation = gets.chomp.to_s.downcase

# defining methods for math operations
# additions
def addition(num1, num2)
  return num1 + num2
end

# subtractions
def subtraction(num1, num2)
  return num1 - num2
end

# multiplication
def multiplication(num1, num2)
  return num1 * num2
end

# dividsion
def division(num1, num2)
  return num1 / num2
end

# Loop to ask for and check input for operations
attempt = 0
while !(operation == "add" || operation == "+" || operation == "subtract" || operation == "-" || operation == "multiply" || operation == "*" || operation == "divide" || operation == "/")
  if attempt < 3
    puts "Oops your input was not recognized. Please try again "
    operation = gets.chomp.to_s.downcase
    attempt += 1
  elsif attempt == 3
    puts "You exceeded the amount of tries. GoodBye!"
    exit
  end
end

# Ask user for numerical value input and validate input to be an integer
  puts "Please input your numbers"
  puts "First number: "
  first_num = gets.chomp
    until !((first_num !='0') && (first_num.to_i.to_s != first_num))
        puts "Please enter a valid number"
        first_num = gets.chomp
    end
      first_num = first_num.to_i

  puts "Second number: "
  second_num = gets.chomp
    until !((second_num !='0') && (second_num.to_i.to_s != second_num))
        puts "Please enter a valid number"
        second_num = gets.chomp
    end
      second_num = second_num.to_i


# Perform calculations and print and appropriate answers

if operation == "add" || operation == "+"
  puts "#{first_num} + #{second_num} =  #{addition(first_num, second_num)}"
elsif operation == "subtract" || operation == "-"
  puts "#{first_num} - #{second_num} =  #{subtraction(first_num, second_num)}"
elsif operation == "multiply" || operation == "*"
  puts "#{first_num} * #{second_num} =  #{multiplication(first_num, second_num)}"
elsif operation == "divide" || operation == "/"
  if second_num == 0 || second_num == nil
    puts "You can not divide any number by zero or nil."
  else
      puts "#{first_num} / #{second_num} =  #{division(first_num, second_num)}"
  end
end
