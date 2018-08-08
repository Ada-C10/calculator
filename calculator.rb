
# FUNCTIONS

# Boolean function on whether string input is a number
def is_numeric(num)

  if num.to_f.to_s == num || num.to_i.to_s == num
    return true
  else
    return false
  end

end

# Function to reprompt user if input is not valid
def is_valid_numeric_input(order)

  print "#{order} number >> "
  num = gets.chomp

  until is_numeric(num)
    puts "Not valid number. Please try again."
    print "#{order} number >> "
    num = gets.chomp
  end

  return num
end

# Simplify to integer if possible
def simplify_integer(num)
  if num.to_i == num then
    return num.to_i
  else
    return num
  end
end

puts "\n\nWelcome to the calculator! Which operator do you want to use?"
puts "\n\tadd (+)"
puts "\tsubtract (-)"
puts "\tmultiply (*)"
puts "\tdivide (/)"
puts "\texponify (^)"
puts "\tmodulo (%)"

print "\nPlease input name or symbol of operator >> "

operators = ["add", "+", "subtract", "-", "multiply", "*", "divide", "/", "exponify", "^", "modulo", "%"]

operator = gets.chomp.downcase
until operators.include? operator
  print "Not valid operation. Please try again. >> "
  operator = gets.chomp
end


puts "What two numbers would you like to operate on respectively?"
first_num = is_valid_numeric_input("first").to_f
second_num = is_valid_numeric_input("second").to_f


case operator
  when "add", "+"
    answer = first_num + second_num
    symbol = "+"
  when "subtract", "-"
    answer = first_num - second_num
    symbol = "-"
  when "multiply", "*"
    answer = first_num * second_num
    symbol = "*"
  when "divide", "/"

    # Handle cases when trying to divide by zero
    if second_num == 0 then

      until is_numeric(second_num) && second_num.to_f != 0
        puts "Please enter valid second number. (Cannot be zero)"
        print "second number >> "
        second_num = gets.chomp
      end
    end

    second_num = second_num.to_f

    answer = first_num / second_num
    symbol = "/"

  when "exponify", "^"
    answer = first_num ** second_num
    symbol = "^"

  when "modulo", "%"
    answer = first_num % second_num
    symbol = "%"

end

# Simplify floats to integers if possible
first = simplify_integer(first_num)
second = simplify_integer(second_num)
answer = simplify_integer(answer)

puts "#{first} #{symbol} #{second} = #{answer}"
