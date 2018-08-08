# August 7th

# definition of operators
def calculator_operators
  puts "1. add (+)"
  puts "2. subtract (-)"
  puts "3. mulitply (*)"
  puts "4. divide (/)"
end

# Verifying valid operators have been selected
def valid_operators(operator)
  until %w[add + subtract - multiply * divide /].include?(operator)
    puts "That's not a valid operator! Please select from the options below: "
    calculator_operators
    operator = gets.chomp.downcase
  end
  return operator
end


# Intro to program
puts "Welcome to my Calculator program! This program will take two numbers and add, subtract, multiply or divide them. Which operator would you like to use? Please select an option from below: "
calculator_operators

# verifies user entry and displays options in a loop
user_entry = valid_operators(gets.chomp.downcase)

# Verifying user entered a number with regex
def valid_num(number)
  while number != Integer
    puts "I need a number please!"
    number = gets.chomp
  end
  return number
end

puts "First number: "
num1 = valid_num(gets.chomp.to_f)

puts "Second number: "
num2 = valid_num(gets.chomp.to_f)

case user_entry
  when "add", "+"
    add_total = num1 + num2
    puts "#{num1} + #{num2} = #{add_total}"
  when "subtract", "-"
    sub_total = num1 - num2
    puts "#{num1} - #{num2} = #{sub_total}"
  when "mulitply", "*"
    mult_total = num1 * num2
    puts "#{num1} * #{num2} = #{mult_total}"
  when "divide", "/"
    div_total = num1 / num2
    puts "#{num1} / #{num2} = #{div_total}"
  end
