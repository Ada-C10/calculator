#Calclulator Program
#By: Danielle Metzner
#Aug. 7, 2018
puts "Welcome to the Calculator program! Which operator would you like to use?\n \
      1. add(+) \n \
      2. subtract (-) \n \
      3. multiply (*) \n \
      4. divide (/) \n \
      5. exponent (**) \n \
      6. modulo (%) \nPlease choose one operator(name or symbol):"

#Check that the value input for operation matches the operation choices
def operation_check(op)
  valid_operations = ["add","+","subtract","-","multiply","*","divide","/","exponent","**","modulo","%"]
  until valid_operations.include?(op)
    puts "Please enter a valid input, refer to the list above:"
    op = gets.chomp
  end
  return op
end

#Determine whether the number input is an integer or a float
def int_or_f(number)
  if number.to_f - number.to_i == 0.0
    number = number.to_i
  else
    number = number.to_f
  end
end

#Checks to make sure the user input for the numbers is a number
def number_check(number)
  until (number.to_f.to_s == number || number.to_i.to_s == number) && number.to_f != nil
    print "ERROR: Please enter a valid number (float or integer):"
    number = gets.chomp
  end
  return number
end

#Receive user inputs
operation = operation_check(gets.chomp.downcase)

print "Please enter first number: "
num_1 = number_check(gets.chomp)
num_1 = int_or_f(num_1)

print "Please enter second number: "
num_2 = number_check(gets.chomp)
num_2 = int_or_f(num_2)


#Operation Methods
def add(x,y)
  ans = x + y
  ans = int_or_f(ans)
  return ans
end

def subtract(x,y)
  ans = x - y
  ans = int_or_f(ans)
  return ans
end

def multiply(x,y)
  ans = x*y
  ans = int_or_f(ans)
  return ans
end

def divide(x,y)
  ans = x / y
  ans = int_or_f(ans)
  return ans
end

def exponent(x,y)
  ans = x ** y
  ans = int_or_f(ans)
  return ans
end

def modulo(x,y)
  ans = x % y
  ans = int_or_f(ans)
  return ans
end

#Based on user input for operation perform the operation to the two numbers
case operation.downcase
when "add", "+"
  puts "#{num_1} + #{num_2} = #{add(num_1,num_2)}"
when "subtract", "-"
  puts "#{num_1} - #{num_2} = #{subtract(num_1,num_2)}"
when "multiply","*"
  puts "#{num_1} * #{num_2} = #{multiply(num_1,num_2)}"
when "divide", "/"
  if num_2 == 0 || num_2 == 0.0
    puts "Sorry, we cannot divide by zero. Please try again."
  else
    puts "#{num_1} / #{num_2} = #{divide(num_1,num_2)}"
  end
when "exponent", "**"
  puts "#{num_1} ^ #{num_2} = #{exponent(num_1,num_2)}"
when "modulo", "%"
  puts "#{num_1} % #{num_2} = #{modulo(num_1,num_2)}"
end
