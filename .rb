=begin
Write Ruby code with statements that practice conditional logic,
using if, elsif, and else when appropriate
Write Ruby code with statements that practice loops, like while and until when appropriate
Write Ruby code that takes in user input using gets.chomp
Practice creating, storing, and modifying variables
The program should ask the user for an operation (as a string symbol) and two numbers.
=end

puts "Welcome to Ruby Calculator!"
puts "Choose one of the following operators: "
operators = ["add", "subtract", "multiply", "divide", "+", "-", "*", "/"]
puts operators

#user inputs command
command = gets.chomp.downcase

case command
when "add", "+"
  puts "You chose addition, great!"
when "subtract", "-"
  puts "You chose subtraction, great!"
when "multiply", "*"
  puts "You chose multiplication, great!"
when "divide", "/"
  puts "You chose division, great!"
else
  puts "Please enter a command"
end

#to handle erroneous command input from user
while command != "add"  \
  && command != "subtract" \
  && command != "multiply" \
  && command != "divide" \
  && command != "+" \
  && command != "-" \
  && command != "*" \
  && command != "/"
  puts "Please enter add, subtract, multiply, divide"
  command = gets.chomp
 end

puts "Please input two numbers from 0-9"
puts "Number 1: "
num_1 = gets.chomp

puts "Number 2: "
num_2 = gets.chomp

until num_1 =~ /^-?[0-9]+$/  && num_2 =~ /^-?[0-9]+$/
  puts "Choose valid numbers please."
  puts "Number 1: "
  num_1 = gets.chomp

  puts "Number 2: "
  num_2 = gets.chomp
end

puts "Great, you chose valid numbers."

def calculate(command, num_1, num_2)
  if command == "add" || command == "+"
    return num_1.to_i + num_1.to_i
  elsif command == "subtract" || command == "-"
   return num_1.to_i - num_1.to_i
 elsif command == "multiply" || command == "*"
    return num_1.to_i * num_1.to_i
  elsif command == "divide" || command == "/"
    return num_1.to_i / num_1.to_i
  end
end

answer = calculate(command, num_1, num_2)
puts "Your answer is #{answer}!"
