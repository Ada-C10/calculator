# create methods for calculations
def multiply(num1, num2)
  answer = num1.to_i * num2.to_i
  puts "#{num1} * #{num2} = #{answer}"
  return answer
end

def add(num1, num2)
  answer = num1.to_i + num2.to_i
  puts "#{num1} + #{num2} = #{answer}"
  return answer
end

def subtract(num1, num2)
  answer = num1.to_i - num2.to_i
  puts "#{num1} - #{num2} = #{answer}"
  return answer
end

def divide(num1, num2)
  if num2.to_i == 0
    answer = "Undefined"
  else
    answer = num1.to_f / num2.to_f
  end
  puts "#{num1} / #{num2} = #{answer}"
  return answer
end

def exponent(num1, num2)
  answer = num1.to_i ** num2.to_i
  puts "#{num1} ^ #{num2} = #{answer}"
  return answer
end

def modulo(num1, num2)
  if num2.to_i == 0
    answer = "Undefined"
  else
    answer = num1.to_i % num2.to_i
  end
  puts "#{num1} % #{num2} = #{answer}"
  return answer
end

puts "Welcome to the Calculator program! Which operator would you like to use?"
puts "1. add (+)"
puts "2. subtract (-)"
puts "3. multiply (*)"
puts "4. divide (/)"
puts "5. exponent (^)"
puts "5. modulo (%)"
puts "Please choose one operator (name or symbol): "

# make sure operator is a valid option
operator = gets.chomp
until ["add", "+", "subtract", "-", "multiply", "*", "divide", "/", "exponent", "^", "modulo", "%"].include?(operator)
  puts "Please select a valid operator:"
  operator = gets.chomp
end

puts "Please input integers you would like to calculate:"

# get first integer
puts "First integer: "
first_number = gets.chomp
until first_number.to_i.to_s == first_number
  puts "That's not an integer! Please input an integer:"
  first_number = gets.chomp
end

# get second integer
puts "Second integer: "
second_number = gets.chomp
until second_number.to_i.to_s == second_number
  puts "That's not an integer! Please input an integer:"
  second_number = gets.chomp
end

# depending on operator, invoke correct calculation method
case operator
when "add", "+"
  add(first_number, second_number)
when "subtract", "-"
  subtract(first_number, second_number)
when "multiply", "*"
  multiply(first_number, second_number)
when "divide", "/"
  divide(first_number, second_number)
when "exponent", "^"
  exponent(first_number, second_number)
when "modulo", "%"
  modulo(first_number, second_number)
else
  puts "Yikes something went wrong :( "
end

puts "Thanks for using the Calculator program!"
