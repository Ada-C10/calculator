# define methods / acceptable operators
def add(x, y)
  return x + y
end

def subtract(x, y)
  return x - y
end

def divide(x, y)
  return x / y
end

def multiply(x, y)
  return x * y
end

def exponent(x, y)
  return x ** y
end

def modulo(x, y)
  return x % y
end

acceptable_operators = ["add", "+", "subtract", "-", "divide", "/", "multiply", "*", "exponent", "^", "modulo", "%"]

# intro / choose operator
puts "Hi! Welcome to the calculolator app :) I will help you perform simple (and not so simple!) calculolations :) :)"

puts """\nPlease choose which operation you would like to perform:

(you may type either the name of the operator or its symbol)

Add (+)
Subtract (-)
Divide (/)
Multiply (*)
Exponent (^)
Modulo (%)
"""

operation = gets.chomp.downcase

# verify operator
until acceptable_operators.include?(operation)

  puts "\nSorry, what you typed was not an acceptable operation. Perhaps you made a typo?"

  operation = gets.chomp

end

# convert operator symbols
case operation
  when "add"
    operation = "+"

  when "subtract"
    operation = "-"

  when "multiply"
    operation = "*"

  when "divide"
    operation = "/"

  when "exponent"
    operation = "^"

  when "modulo"
    operation = "%"

end

# clear console
system "clear" or system "cls"

# take values from user
puts "\nPlease input the first number from your equation (this number will be acted upon by the second number):"

first_num = gets.chomp

puts "\nPlease input the second number from your equation (this number will act upon the first number):"

second_num = gets.chomp

# use regex to check for erroneous values (sadly unsure how to write regular expression that allows input of floats while also preventing input of non-numerical characters D:)
while first_num.scan(/\D/).empty? == false || second_num.scan(/\D/).empty? == false || first_num == "" || second_num == ""
  puts "\nOh no! It looks like you screwed something up! Let's try it again ok?"

  puts "First number:"
  first_num = gets.chomp

  puts "Second number:"
  second_num = gets.chomp
end

# convert num strings to float
first_num = first_num.to_f
second_num = second_num.to_f

# verify divide by zero
if operation == "/" && second_num == 0
  puts "\nOh no! It looks like you are trying to divide by zero! Unfortunately, this is contrary to Intergalactic Law and I will have to request that you choose a new number to divide your first number by."

  while second_num == 0
    puts "Second number:"

    second_num = gets.chomp.to_f
  end
end

# perform calculation
if operation == "+"
  result = add( first_num, second_num )

elsif operation == "-"
  result = subtract( first_num, second_num )

elsif operation == "*"
  result = multiply( first_num, second_num )

elsif operation == "/"
  result = divide( first_num, second_num )

elsif operation == "^"
  result = exponent( first_num, second_num )

elsif operation == "%"
  result = modulo( first_num, second_num )

end

# clear console
system "clear" or system "cls"

# output formula / result
puts "\nAlright, here are the results of your calculation!"

puts "#{first_num} #{operation} #{second_num} = #{result}"

puts "I hope you're pleased with yourself! I know I am!"
