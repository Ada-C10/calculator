#Solution using Regular Expressions
def number_type (num)
  if num.scan(/\./).empty?
    num = num.to_i
  else
    num = num.to_f
  end
  return num
end

# Solution without Regular Expressions
# def number_type (num)
#   if num.to_f.round - num.to_f == 0
#     return num.to_i
#   else
#     return num.to_f
#   end
# end

# def is_a_number (num)
#   if num == num.to_i.to_s || num == num.to_f.to_s
#     return true
#   else
#     return false
#   end
# end

def add (num1, num2)
  return "#{num1} + #{num2} = #{(num1 + num2)}"
end

def subtract (num1, num2)
  return "#{num1} - #{num2} = #{(num1 - num2)}"
end

def multiply (num1, num2)
  return "#{num1} * #{num2} = #{(num1 * num2)}"
end

def divide (num1, num2)
  if num2 == 0
    return "Undefined! Can't divide by 0."
  elsif num1 % num2 != 0
    return "#{num1} / #{num2} = #{(num1.to_f / num2)}"
  else
    return "#{num1} / #{num2} = #{(num1 / num2)}"
  end
end

def exponents (num1, num2)
  if num1 == "0" && num2 == "0"
    return "Undefined!"
  else
    return "#{num1}^#{num2} = #{(num1 ** num2)}"
  end
end

def modulo (num1, num2)
  if num2 == "0"
    return "Undefined!"
  else
    return "#{num1} % #{num2} = #{(num1 % num2)}"
  end
end

puts "Welcome to the Calculator program! Which operator would you like to use?"
puts "1. add(+)"
puts "2. subtract(-)"
puts "3. multiply(*)"
puts "4. divide(/)"
puts "5. exponent(^)"
puts "6. modulo(%)"
print "Please choose one operator(name or symbol): "
operation = gets.chomp.downcase

valid_operations = ["add", "+", "subtract", "-", "multiply", "*", "divide", "/", "exponent", "^", "modulo", "%"]
until valid_operations.include?(operation)
  print "Please input a valid operation: "
  operation = gets.chomp.downcase
end

print "Enter the first number: "
num1 = gets.chomp
# Solution without Regular Expressions
# until is_a_number(num1) do
#   puts "You did not enter a number!"
#   print "Enter the first number: "
#   num1 = gets.chomp
# end

print "Enter the second number: "
num2 = gets.chomp
# Solution without Regular Expressions
# until is_a_number(num2) do
#   puts "You did not enter a number!"
#   print "Enter the first number: "
#   num2 = gets.chomp
# end
#
# num1 = number_type(num1)
# num2 = number_type(num2)

# Solution using Regular Expressions
until !num1.scan(/^[+-]?[0-9]*\.?[0-9]+$/).empty? && !num2.scan(/^[+-]?[0-9]*\.?[0-9]+$/).empty? && !num1.empty? && !num2.empty? do
  puts "You did not enter a number!"
  print "Enter the first number: "
  num1 = gets.chomp
  print "Enter the second number: "
  num2 = gets.chomp
end

num1 = number_type(num1)
num2 = number_type(num2)

case operation
when "add", "+"
  result = add(num1, num2)
when "subtract", "-"
  result = subtract(num1, num2)
when "multiply", "*"
  result = multiply(num1, num2)
when "divide", "/"
  result = divide(num1, num2)
when "exponent", "^"
  result = exponents(num1, num2)
when "modulo", "%"
  result = modulo(num1, num2)
end

puts "#{result}"
