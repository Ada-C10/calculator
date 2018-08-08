#calculator project
#Incorporate .include? in case statement, esp. for multiply, divide and substract
#Handle starting again
#Handle complex equation
#Handle inverting input numbers and order of ops?

#Handle Fence Post Issue
puts "Operand: "
input_operand = gets.chomp

valid_operand = ['+', 'plus', 'add', 'minus', 'subtract', 'subraction', 'x', 'X', 'times', 'multiply', 'multiplication', '*', '/', 'over', 'divide', 'division', '%', 'mod', '^', 'expon']
#Loop Around Until User Enters Valid Operand
# until input_operand == '+'|| input_operand.include?('plus') || input_operand.include?('add') || input_operand == "-" || input_operand.include?('minus') || input_operand.include?('subtr') || input_operand == "x" || input_operand == "X" ||input_operand == "times" || input_operand.include?('mult') || input_operand.include?('*') || input_operand == "/" || input_operand == "over" || input_operand.include?('divi') || input_operand == "%" || input_operand.include?("mod") || input_operand == "^" || input_operand.include?('expon')

#new loop using array --> inspired by Hayden's array
until valid_operand.include?(input_operand)

  system ("clear")

  puts "Not an operand. Please choose one of these operations... "
  puts "\n1. add(+)"
  puts "2. subtract(-)"
  puts "3. multiply(x, *)"
  puts "4. divide(/)"
  puts "5. modulo(%)"
  puts "6. exponent(^)"
  puts "\nENTER VALID OPERAND: "
  input_operand = gets.chomp
end

system ("clear")

#assign user input to first and second number
puts "First number [DIGIT]: "
input_first_number = gets.to_i
puts "Second number [DIGIT]: "
input_second_number = gets.to_i

#problem with this integer since input numbers are changed into int when stored
# until input_first_number.is_a?(Integer) == true

#NEW METHOD TO  IMPLEMENT LATER: check if == "0" then convert to i and continue, convert rest to i and check if == 0 then continue saying error message
# input_second_number = input_second_number.to_i

#Goeun's method, not finished TO IMPLEMENT: convert to i and to s and compare to see if the same; need user input to be string
# until input_first_number == input_first_number.to_i.to_s
#   puts "Error. Enter new: "
#   input_first_number = gets.chomp
# end
#input_first_number = input_first_number.to_i
# until input_second_number == input_second_number.to_i.to_s
#   puts "Error. Enter new: "
#   input_second_number = gets.chomp
# end
#input_second_number = input_second_number.to_i

#calculate method that takes in arguments operand and 2 numbers as parameters to calculate value and return mathematical statement of value
def calculate(operand, first_number, second_number)
  case operand
  when '+', 'plus','add'
    value = first_number + second_number
    symbol = "+"
  when "-" ,'minus','subtract', 'subtraction'
    value = first_number - second_number
    symbol = "-"
  when "x" , "X" , "*" , "multiply", "times",  "multiplication"
    value = first_number * second_number
    symbol = "*"
    # when operand.include?("mult")
    #   return first_number * second_number
  when '/' , 'divide', 'division' , 'over'
    if second_number == 0
      return "Uh oh! Something broke... Division by zero error. "
    else
      value = 1.0 * first_number / second_number
      symbol = "/"
    end
  when '%' , 'mod' , 'modulo'
    value = first_number % second_number
    symbol = "%"
  when '^', 'exponent'
    value = first_number ** second_number
    symbol = "^"
  end
  return "#{first_number} #{symbol} #{second_number} = #{value}"
end

system ("clear")

puts "#{calculate(input_operand, input_first_number, input_second_number)}"
