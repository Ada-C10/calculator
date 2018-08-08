# calculator program that allows user to choose what operator, along with two numbers to calculate.

# the program will run once while true and if the user wants to play again, they would need to type 'y' when prompted
play_again = "y"


# while will run true the first time and begin the program
while play_again == "y"

  puts """
  Welcome to the calculator program. Which operator would you like to use?
  1. add(+)
  2. subtract(-)
  3. multiply(*)
  4. divide(/)

  """

# prompts the user to select which operator option they'd like to use.
  print "Please choose one operator (name or symbol): "
  user_input = gets.chomp

# verifies if user enters in one of the defined options and if not, asks the user to re-enter their choice.
  until %[add + subtract - multiply * divide /].include?(user_input)
    print "Your input is invalid. Please try again. "
    user_input = gets.chomp
  end


# user is asked to enter in their first integer
  print "Enter the first number: "
  first_number = gets.chomp

# created an until loop to verify if user enters in an integer, and if not, prompts them to try again.
# found this solution located here: https://stackoverflow.com/a/1236045 would like to know more on how 
# rescue works or if there's a more ideal solution.

  until (Integer(first_number) rescue false)
      print "invalid input, please enter a number: "
      first_number = gets.chomp
  end


# same code as first number prompt
  print "Enter the second number: "
  second_number = gets.chomp

  until (Integer(second_number) rescue false)
      print "invalid input, please enter a number: "
      second_number = gets.chomp
  end


# saving the input variables to integer format so the calculations run correctly
  first_number = first_number.to_i
  second_number = second_number.to_i


# created a case statment to run through the user_input operator choice and depending on 
# which operator is selected, the calculation is completed and displayed for the user.
  case user_input

    when  "add", "+"

      result_add = first_number + second_number
      puts "Your result is: #{first_number} + #{second_number} = #{result_add}"

    when  "subtract", "-"

      result_sub = first_number - second_number
      puts "Your result is: #{first_number} - #{second_number} = #{result_sub}"

    when  "divide",  "/"

# ensuring that if the user enters in 0 for their second number, the program asks for a new number if 
# division operator is selected because you cannot divide by zero. 
# Converts their number to a float to get accurate division result.
        if second_number == 0
            print "Cannot be divided by zero. Please re-enter your option: "
            second_number = gets.chomp.to_f
        end

      result_div = first_number / second_number
      puts "Your result is: #{first_number} / #{second_number} = #{result_div}"

    when  "multiply",  "*"

      result_multi = first_number * second_number
      puts "Your result is: #{first_number} * #{second_number} = #{result_multi}"

  end


# asks the user if they want to run the program again
  print "Want to play again? (y/n): "
  play_again = gets.chomp

# if 'y' is entered, the loop will run the program again, if neither y nor n is entered, 
# the user will be asked to type again.
  until play_again == "y" || play_again == "n"
    print "invalid, please use 'y' or 'n'"
    play_again = gets.chomp
  end

end

puts
# if n is chosen, the program ends and thanks the user.
puts "Thanks for playing!"
