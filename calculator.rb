# The program should use the input operation and two numbers to provide the result of applying the operation to the two numbers.
#
# The program should have support for these four operations: addition, subtraction, multiplication, and division.
# The program should accept both the name (add) and the symbol (+) for each possible operation.
# The program should handle unexpected user input

#create an array w all possible input.
# make sure your code is written appropriately

calculations = ["add", "+", "subtract", "-", "multiply", "*", "divide", "/", "exponential", "^", "modulo", "%"]

puts "Welcome to the Calculator Program! Which operator would you like to use?"
puts "1. add(+)"
puts "2. subtract(-)"
puts "3. multiply(*)"
puts "4. divide(/)"
puts "5. exponential(^)"
puts "6. modulo(%)"
print "Please choose one operator (name or symbol): "

user_input = gets.chomp.to_s.downcase

# find if user input is included in the array
until calculations.include? user_input
  puts "That is not a valid answer."
  puts "Try again."
  user_input = gets.chomp.downcase
end


# use an until loop to get the user to input correct info
# after I did this, I realized that an array would be a better option
# until user_input == "add" || user_input == "+" || user_input == "subtract" || user_input == "-" || user_input == "multiply" || user_input == "*" || user_input == "/" || user_input == "divide" || user_input == "exponential" || user_input == "^" || user_input == "modulo" || user_input == "%"
#   puts "That is not a valid answer."
#   puts "Try again."
#   user_input = gets.chomp.downcase
# end

#define methods for each operator
def addition(num_one, num_two)
   return num_one + num_two
end

def subtraction(num_one, num_two)
  return num_one - num_two
end

def multiplication(num_one, num_two)
  return num_one * num_two
end

def division(num_one, num_two)
  return num_one / num_two
end

def exponents(num_one, num_two)
  return num_one ** num_two
end

def modulus(num_one, num_two)
  return num_one % num_two
end

# ??
# create a method that will print out "give me 2 numbers....:take the numbers the user inputs
# try this later

# def input_numbers(choice_1, choice_2)
#   return puts "Give me 2 #'s: '"
#   print "#1: "
#   num_1 = get_user_num()
#   print "#2: "
#   num_2 = get_user_num()


# create a method to check if any of the user input is a number
# each n umber the user inputs will get invoked in this method
# used a regex because .Include? didn't work for me???

def get_user_num
  user_num = gets.chomp
  until user_num =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/
    print "Not a valid number. Try again: "
    user_num = gets.chomp
  end
  return user_num.to_f
end



# use if/else statment to find which method to use based on user input
# Don't forget to put user_input on both sides of conditionals!!


  if user_input == "add" || user_input == "+"
    puts "Give me 2 #'s': "
    print "#1: "
    num_1 = get_user_num()
    print "#2: "
    num_2 = get_user_num()
    result = addition(num_1, num_2)
    puts "The answer is #{num_1} + #{num_2} = #{result}"


  elsif user_input == "subtract" || user_input == "-"
    puts "Give me 2 #'s': "
    print "#1: "
    num_1 = get_user_num()
    print "#2: "
    num_2 = get_user_num()
    result = subtraction(num_1, num_2)
    puts "The answer is #{num_1} - #{num_2} = #{result}"

  elsif user_input == "multiply" || user_input == "-"
    puts "Give me 2 #'s': "
    print "#1: "
    num_1 = get_user_num()
    print "#2: "
    num_2 = get_user_num()
    result = multiplication(num_1, num_2)
    puts "The answer is #{num_1} * #{num_2} = #{result}"

    # this is breaking out of the program if second number isn't valid on the divide? oh, because the variables i used changed. Nope because my end in my while loop was after the result and in line with my initial if statement
  elsif user_input == "divide" || user_input == "/"
    puts "Give me 2 #'s': "
    print "#1: "
    num_1 = get_user_num()
    print "#2: "
    num_2 = get_user_num()
    # while num_3 && num_4 =~ /[0-9]/
      while num_2 == 0
        puts "Can't divide by 0. Try again."
        num_2 = get_user_num()
      end
    result = division(num_1, num_2)
    puts "The answer is #{num_1} / #{num_2} = #{result}"


  elsif user_input == "exponential" || user_input == "^"
    puts "Give me 2 #'s': "
    print "#1: "
    num_1 = get_user_num()
    print "#2: "
    num_2 = get_user_num()
    result = exponents(num_1, num_2)
    puts "The answer is #{num_1} ** #{num_2} = #{result}"

  elsif user_input == "modulo" || user_input == "%"
    puts "Give me 2 #'s': "
    print "#1: "
    num_1 = get_user_num()
    print "#2: "
    num_2 = get_user_num()
    result = modulus(num_1, num_2)
    puts "The answer is #{num_1} % #{num_2} = #{result}"

  end
