#Calculator program

#define methods to carry out operations
def addition(num1, num2)
  return num1 + num2
end

def subtraction(num1, num2)
  return num1 - num2
end

def multiplication(num1, num2)
  return num1 * num2
end

def division(num1, num2)
  return num1.to_f / num2.to_f
end

def exponent(num1, num2)
  return num1 ** num2
end

def mod(num1, num2)
  return num1 % num2
end

#checks to make sure the user entered a real number
#old version that doesn't account for 0.00000, etc.
=begin
def number_check(user_input)
  if user_input == "0" || user_input == "0.0"
    return 0
  elsif user_input.to_f == 0
    return false
  else
    return user_input
  end
end


#attempt at regular expression that didn't work the way I wanted
def number_check(user_input)
  if user_input =~ /[0-9]*[\.]?[0-9]+/
    return user_input
  else
    return false
  end
end

=end

#String method to test if a string is numeric
# https://mentalized.net/journal/2011/04/14/ruby-how-to-check-if-a-string-is-numeric/

class String
  def numeric?
    Float(self) != nil rescue false
  end
end

#checks that user inputted a real number
def number_check(user_input)
  if user_input.numeric?
    return user_input
  else
    return false
  end
end


#verifies user input and keeps prompting until a valid number is entered
def verify(input)
  until number_check(input)
    puts "Please enter a number!"
    input = gets.chomp
  end
  return input.to_f
end

#checks if the final answer should be an int or a Float
def look_pretty(answer)
  if answer == answer.to_i
    return answer.to_i
  else
    return answer
  end
end

#define methods to get user input and print results
def add_it
  puts "Ok, we're adding.  What is the first number?"
  first = gets.chomp
  first = verify(first)
  puts "What number do you want to add to #{look_pretty(first)}?"
  second = gets.chomp
  second = verify(second)
  puts "The sum of #{look_pretty(first)} and #{look_pretty(second)} is #{look_pretty(addition(first,second))}"
end

def subtract_it
  puts "Ok, we're subtracting.  What number do you want to start with?"
  first = gets.chomp
  first = verify(first)
  puts "What do you want to subtract from #{look_pretty(first)}?"
  second = gets.chomp
  second = verify(second)
  puts "#{look_pretty(first)} minus #{look_pretty(second)} is #{look_pretty(subtraction(first,second))}"
end

def multiply_it
  puts "Ok, we're multiplying.  What is the first number?"
  first = gets.chomp
  first = verify(first)
  puts "What do you want to multiply #{look_pretty(first)} by?"
  second = gets.chomp
  second = verify(second)
  puts "#{look_pretty(first)} times #{look_pretty(second)} is #{look_pretty(multiplication(first,second))}"
end

def divide_it
  puts "Ok, we're dividing.  What number do you want to start with?"
  first = gets.chomp
  first = verify(first)
  puts "What do you want to divide #{look_pretty(first)} by?"
  second = gets.chomp
  second = verify(second)
  until second.to_f != 0
    puts "If you attempt to divide by zero the world explodes.  Please try again!"
    second = gets.chomp
  end
  puts "#{look_pretty(first)} divided by #{look_pretty(second)} is #{look_pretty(division(first,second))}"
end

def exponentiate_it
  puts "Ok, we're raising something to an exponent power.  What is your base number?"
  first = gets.chomp
  first = verify(first)
  puts "What power do you want to raise #{look_pretty(first)} to?"
  second = gets.chomp
  second = verify(second)
  puts "#{look_pretty(first)} to the power of #{look_pretty(second)} is #{look_pretty(exponent(first,second))}"
end

def modulo_it
  puts "We're finding a remainder after division.  Please enter your first number."
  first = gets.chomp
  first = verify(first)
  puts "What do you want to divide #{look_pretty(first)} by?"
  second = gets.chomp
  second = verify(second)
  puts "The remainder of #{look_pretty(first)} divided by #{look_pretty(second)} is #{look_pretty(mod(first,second))}"
end



#Prompt user for input
puts "Welcome to the calculator!"

#check user input for operation choice.  If an invalid selection is made, prompt user to try again and then rerun the method
def user_picks_an_operation
  puts "Here's what I can do for you: \n Add(+) \n Subtract(-) \n Multiply(*) \n Divide(/) \n Exponentiate(^) \n Remainder(%) \nWhich one would you like to do?"
operation = gets.chomp
case operation.downcase
  when "add", "+"
    add_it
  when "subtract", "-"
    subtract_it
  when "multiply", "*"
    multiply_it
  when "divide", "/"
    divide_it
  when "exponentiate", "^"
    exponentiate_it
  when "remainder", "%"
    modulo_it
  else
    puts "That's not an available operation!  Please try again."
    user_picks_an_operation
  end
end

user_picks_an_operation
