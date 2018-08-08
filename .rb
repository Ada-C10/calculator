puts "Welcome to the ADA Calculator"
puts "Which operation would you like to use? "
puts " 1. add(+)"
puts " 2. substract(-)"
puts " 3. multiply(*)"
puts " 4. divide(/)"


def get_operation
  puts " So what is the operation you would like to use (type name or the symbol)?"
  operation = gets.chomp
  until operation == "+" || operation == "-" || operation == "/" || operation == "*"
    puts "Please enter a valid operation"
    operation = gets.chomp
  end
  return operation
end

def get_number
  puts "Select a number"
  number1 = gets.chomp.to_i
  return number1
end

ops = get_operation()
number1 = get_number
number2 = get_number

case ops.downcase
when "add", "+"
  result = number1 + number2
  # print result
when "subtract", "-"
  result = number1 - number2
when "multiply", "*"
  result = number1 * number2
when "divide" , "/"
  if number2 == 0
    result = "undefined"
  else
    result = number1 / number2
  end
else
  puts "Didn't match anything!"
end

puts result
