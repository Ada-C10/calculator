#Welcome user and accept numbers to be evaluated. Validate user input.
puts "Welcome to the calculator program!"
puts "You will need to enter two numbers to be evaluated."
puts "Please enter the first."
begin
  number_1 = gets.chomp
  number_1 = Float(number_1)
  rescue
    puts "There is an error with your number. Please make sure you're using numbers/decimals only and try again."
  retry
end

puts "Please enter another number."
begin
  number_2 = gets.chomp
  number_2 = Float(number_2)
  rescue
    puts "There is an error with your number. Please make sure you're using numbers/decimals only and try again."
  retry
end

#create a method for each operator
def add_two_numbers(first_number, second_number)
    puts "#{first_number} + #{second_number} = #{first_number + second_number}"
end

def subtract_two_numbers(first_number, second_number)
    puts "#{first_number} - #{second_number} = #{first_number - second_number}"
end

def multiply_two_numbers(first_number, second_number)
    puts "#{first_number} * #{second_number} = #{first_number * second_number}"
end

def divide_two_numbers(first_number, second_number)
  if second_number == 0
    puts "#{first_number} / #{second_number} = According to Wikipedia, the result of any number divided by zero is undefined."
  else
    puts "#{first_number} / #{second_number} = #{first_number / second_number}"
  end
end

#prompt the user to choose their operator
puts "Choose your operator! Type the name or symbol from the list below:"
puts "1. add (+)"
puts "2. subtract (-)"
puts "3. multiply (*)"
puts "4. divide (/)"
operator = gets.chomp

#use the appropriate method to evaluate the values
case operator
  when "add", "+"
    add_two_numbers(number_1, number_2)
  when "subtract", "-"
    subtract_two_numbers(number_1, number_2)
  when "multiply", "*"
    multiply_two_numbers(number_1, number_2)
  when "divide", "/"
    divide_two_numbers(number_1, number_2)
  else
    puts "I'm sorry. That is not a valid option."
end
