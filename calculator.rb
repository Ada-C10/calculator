puts "Welcome to your calculator. Choose from the following operations: \n 1. add (+) \n 2. subtract (-) \n 3. multiply (*) \n 4. divide (/) \n Please type the name or symbol for the operator you would like to use"

chosen_operator = gets.chomp!

#gets numbers from user
  puts "First number:"
  first_number = gets.chomp.to_f
  puts "Second number:"
  second_number = gets.chomp.to_f

#checking if number is integer by dividing it by itself
  if first_number / first_number == 1 && second_number / second_number == 1

    if chosen_operator == "add" || chosen_operator == "+"
      puts "#{first_number} + #{second_number} = #{first_number + second_number}"
    elsif chosen_operator == "subtract" || chosen_operator == "-"
      puts "#{first_number} - #{second_number} = #{first_number - second_number}"
    elsif chosen_operator == "multiply" || chosen_operator == "*"
      puts "#{first_number} * #{second_number} = #{first_number * second_number}"
    elsif chosen_operator == "divide" || chosen_operator == "/"
      puts "#{first_number} / #{second_number} = #{first_number / second_number}"
    end
    
#if number wasn't an integer, will display option to re-input
elsif puts "Sorry, that wasn't a number. Try again."
  end
