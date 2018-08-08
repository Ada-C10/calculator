#list of operators
operators = %W[add + subtract - multiply * divide / modulo % power **]

#options of mathmatical operation user can choose from
puts "Welcome to the Calculator Program. Which operator would you like to use?
 1. Add(+)
 2. Subtract(-)
 3. Multiply(*)
 4. Divide(/)
 5. Power(**)
 6. Modulo(%)
Please choose one operator(name or symbol)"
command = gets.chomp.downcase
if command == "/" || command == "divide"
  puts "As a reminder you cannot divided by 0"
end

#prompt user unitl they enter the correct math operator
until operators.include?(command)
  puts "\n\nPlease re-enter correct operators add(+), subtract(-),
  multiply(*), divide(/), power(**), modulo(%)"
  command = gets.chomp
end

#prompt user unitl they enter a numaric number
puts "Please input the numbers you want to calculate:"
print "Number:"
number = gets.chomp.to_f
while number =~ /\D/
  puts "Please re-enter the numbers you want to calculate:"
  number = gets.chomp
end
number = number

print "Number:"
number2 = gets.chomp.to_f
while number2 =~ /\D/
  puts "Please re-enter the numbers you want to calculate:"
  number2 = gets.chomp
end
number2 = number2

#methods to run equations
def add(number,number2)
  return number + number2
end

def subtract(number,number2)
  return number - number2
end

def multiply(number,number2)
  return number * number2
end

def divide(number,number2)
  if number == 0 || number2 == 0
    return "Sorry, you can't divide by 0"
  else
    return '%.2f' % (number / number2)
  end
end

def power(number,number2)
  return number ** number2
end

def modulo(number,number2)
    return number % number2
end

#call user input and output it to the console
case command.downcase
  when "add", "+"
    puts "#{number} + #{number2} = #{add(number,number2)}"
  when "subtract", "-"
    puts "#{number} - #{number2} = #{subtract(number,number2)}"
  when "multiply", "*"
    puts "#{number} * #{number2} = #{multiply(number,number2)}"
  when "divide", "/"
    puts "#{number} / #{number2} = #{divide(number,number2)}"
  when "power", "**"
    puts "#{number} ^ #{number2} = #{power(number,number2)}"
  when "modulo", "%"
    puts "#{number} % #{number2} = #{modulo(number,number2)}"
end
