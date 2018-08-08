#Calculator Katherine Fitzpatrick

puts "Welcome to the Calculator program! Which operator would you like to use? \n\

1. add(+)
2. subtract(-)
3. multiply (*)
4. divide (/)
5. modulo (%)
6. exponent (**)"
valid_operations = ["add", "subtract", "multiply", "divide", "modulo", "exponent", "+", "-", "*", "/", "%", "**"]

command = 0

until valid_operations.include?(command)

  puts "Please enter a valid command:

  1. add(+)
  2. subtract(-)
  3. multiply (*)
  4. divide (/)
  5. modulo (%)
  6. exponent (**)"
command = gets.chomp
number = 0
other = 0

end

puts "Enter first number"
number = gets.chomp
puts "Enter the second number"
other = gets.chomp

while /\A[-+]?\D+\z/.match(number)|| /\A[-+]?\D+\z/.match(other)
  puts "not a valid number, try again"
  puts "Enter the first number:"
  number = gets.chomp
  puts "Enter the second number"
  other = gets.chomp

  end

def addnum(number,other)
return number.to_i + other.to_i

end

def subnum(number,other)
  return number.to_i - other.to_i
end

def multi(number,other)
  return number.to_i * other.to_i
end

def div(number,other)
  return number.to_f / other.to_f
end

def mod(number,other)
  return number.to_f % other.to_f
end


if command == "+" || command == "add"
  result = addnum(number,other)
puts  "the answer is " + " " + "#{result}"

elsif command == "-" || command == "subtract"
  result = subnum(number,other)
  puts  "the answer is " + " " + "#{result}"

elsif command == "*" || command == "multiply"
  result = multi(number,other)
  puts  "the answer is " + " " + "#{result}"

elsif command == "-" || command == "divide"
  result = div(number,other)
  puts  "the answer is " + " " + "#{result}"

elsif command == "%" || command == "modulo"
  result = mod(number,other)
    puts  "the answer is " + " " + "#{result}"


end
