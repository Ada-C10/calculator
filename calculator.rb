# prints title and operation options
puts "Are you ready to Calculate!!!"
puts "Operations:\nadd(+)\nsubtract(-)\nmultiply(*)\ndivide(/)\nexponent(^)\nmodulo(%)\n"
# collects operation type from user
print "Choose an operation: "
operation = gets.chop.downcase
# list of acceptible operations
operators = ["+", "add", "-", "subtract", "*", "multiply", "/", "divide", "exponent", "^", "modulo", "%", "()"]

# confirms if user entered a  valid operation
until operators.include?(operation)
  puts "Please enter a valid operation"
  operation = gets.chop.downcase
end

# collects two numbers for calculation
puts "What are the two numbers you want to use?"
print "Enter a number: "
value_1 = gets.chomp
# confirms user has entered a valid number
until value_1.to_s == value_1.to_i.to_s || value_1.to_f.to_s == value_1.to_s
  print "Please enter a valid number: "
  value_1 = gets.chomp
end

print "Enter a second number: "
value_2 = gets.chomp
# confirms user has entered a valid number
until value_2.to_s == value_2.to_i.to_s || value_2.to_f.to_s == value_2.to_s
  print "Please enter a valid number: "
  value_2 = gets.chomp
end

# methods used
def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def multiplying(num1, num2)
  num1 * num2
end

def dividing(num1, num2)
  num1 / num2
end

def exponential(num1, num2)
  num1 ** num2
end

def mod(num1, num2)
  num1 % num2
end

# checks for floats
if value_1.split('').include?('.') || value_2.split('').include?('.')
  value_1 = value_1.to_f
  value_2 = value_2.to_f
else
  value_1 = value_1.to_i
  value_2 = value_2.to_i
end

# calculate and print the result for user
if operation == "+" || operation == "add"
   solution = add(value_1, value_2)
   puts "#{value_1} + #{value_2} = #{solution}"

elsif operation == "-" || operation == "subtract"
   solution = subtract(value_1, value_2)
   puts "#{value_1} - #{value_2} = #{solution}"

elsif operation == "*" || operation == "multiply"
   solution = multiplying(value_1, value_2)
   puts "#{value_1} * #{value_2} = #{solution}"

elsif operation == "/" || operation == "solution"
    if value_1 == 0 || value_2 == 0
      solution = 0
    else
      solution = dividing(value_1, value_2)
    end
    puts "#{value_1} / #{value_2} = #{solution}"

elsif operation == "^" || operation == "exponent"
  solution = exponential(value_1, value_2)
  puts "#{value_1}^#{value_2} = #{solution}"

else operation == "%" || operation == "modulo"
  solution = mod(value_1, value_2)
  puts "#{value_1} % #{value_2} = #{solution}"
end
