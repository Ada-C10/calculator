puts "Welcome to the Calculator Program! You can do any of the following: "
puts "add (+)"
puts "subtract(-)"
puts "multiply(*)"
puts "divide(/)"
puts "exponify(**)"

# print "What would you like to do: "
# choice = gets.chomp

operation = ()
# math_stuff = ["add", "subtract", "multiply", "divide", "exponify","+", "-", "*", "/", "**"]
print "What would you like to do: "
choice = gets.chomp
 if ["add", "subtract", "multiply", "divide", "exponify","+", "-", "*", "/", "**"].include?(choice)
   puts 
 else
   puts "That is not math. Try again."
     choice = gets.chomp
end
   case choice
     when "add", "+"
       puts "Addition! Great!"
       operation = "add"
     when "subtract", "-"
       puts "Subtraction! Easy!"
       operation = "subtract"
     when "multiply", "*"
       puts "Multiplication! You got it!"
       operation = "multiply"
     when "divide", "/"
       puts "Division! I'm on it!"
       puts "Remember you cannot divide by 0."
       operation = "division"
     when "exponify", "**"
       puts "Exponentiation! Wow. You're brainy."
       operation = "expone"
end

num_1 = ()
num_2 = ()
print "Okay, what is the first number? "
num_1 = gets.chomp
if num_1.empty?
  puts "try again"
  num_1 = gets.chomp
end
print "And the second number? "
num_2 = gets.chomp
if num_2.empty?
  puts "try again"
  num_2 = gets.chomp
end

num_1 = num_1.to_i
num_2 = num_2.to_i

if operation == "add"
  puts "#{num_1} + #{num_2} = #{num_1 + num_2}"
elsif operation == "subtract"
  puts "#{num_1} - #{num_2} = #{num_1 - num_2}"
elsif operation == "multiply"
  puts "#{num_1} * #{num_2} = #{num_1 * num_2}"
elsif operation == "division"
  if num_1 == 0 || num_2 == 0
    puts "You cannot divide by 0. Exiting calculator."
    exit
  end
  puts "#{num_1} / #{num_2} = #{num_1 / num_2} (Rounded to the nearest whole number.)"
elsif operation == "expone"
  puts "#{num_1} ** #{num_2} = #{num_1 ** num_2}"

end
puts "Yay! It worked!"
