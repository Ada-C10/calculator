# use if, elsif, and else = yes
# use while and/or until loops = yes
# ask user for operation (as string) and 2 numbers
# program applies user-inputted operation to the 2 numbers
# can it add? = yes
# can it subtract? = yes
# can it mulitply? = yes
# can it divide? = yes
# does it error when divide by 0? = yes
# error bad input? (if not number or accepted operator, etc) = yes
# print out formula with the results = yes
# can it exponentiate? = yes
# can it modulo? = yes
# return a float for division = yes
# restrict decimal to 2 places in floats = yes
# accepts parentheticals? = NO.
# explicit return -- no puts in methods!!! = YES

#does all math allowed by calculator
def do_math(x, y, math_sign)
  #operator = math_sign.to_sym #from string to useable symbol
  x = x.to_f #to floats for all
  y = y.to_f

  case math_sign
    when "+"#compares to symbol
      answer = x + y
      return answer.round(2) #restrict to 2 decimal places BUT not super accurate = not good for $$$
    when "-"
      answer = x - y
      return answer.round(2)
    when "/"
      answer = x / y
      return answer.round(2)
    when "*"
      answer = x * y
      return answer.round(2)
    when "**"
      answer = x ** y
      return answer.round(2)
    when "%"
      answer = x % y
      return answer.round(2)
   end
end

#list of input that will be accepted by program
operators = ["+", "add", "-", "subtract", "/", "divide", "*", "multiply", "times", "**", "exponentiate", "exponent", "power of", "%", "remainder", "mod"]

puts "=" * 30 #just a border
puts " I AM A BASIC CALCULATOR! "
puts "=" * 30 #end of border

puts "\nI accept these commands:"
puts "~*" * 10 + "~"
puts operators #just a simple listing of array
puts "~*" * 10 + "~"

puts "\nWhat do you want me to do?"
print ">> "
what_operate = gets.chomp #which operation
math_operation = "" #to help determien what math we are doing
is_number = false #to determine if person puts digit

#loops until correct input received
until operators.include?(what_operate) #checks if user input matches any value in array "operators"
  puts "Sorry, I don't do that. Try again."
  what_operate = gets.chomp
end

until is_number == true
#force number on user
  puts "Give me a number."
    print ">> "
    first_num = gets.chomp

    puts "Can I have another?"
      print ">> "
     second_num = gets.chomp

     if first_num =~ /[a-zA-Z\,]/ || second_num =~  /[a-zA-Z\,]/ #false if either input has alphas
       is_number = false
       puts "Hey, I can only work with numbers!"
     else
       is_number = true
     end
end

case what_operate
 when "add", "+"
   puts "Okay, let's add!"
   math_operation = "+"
 when "subtract", "-"
   puts "Okay, let's subtract!"
   math_operation = "-"
 when "divide", "/"
   while second_num.to_f < 1 #loop to force user to input >0 whien division
     puts "Hey, you can't divide by 0"
     print "Try again >> "
     second_num = gets.chomp
   end
   puts "Okay, let's divide!"
   math_operation = "/"
 when "multiply", "times", "*"
   puts "Okay, let's multiply!"
   math_operation = "*"
 when "**", "exponentiate", "power of", "exponent"
   puts "Okay, let's exponentiate!"
   math_operation = "**"
 when "%", "remainder", "mod"
   while second_num.to_f < 1 #loop to force user to input >0 when division (mod divides)
     puts "Hey, you can't divide by 0"
     print "Try again >> "
     second_num = gets.chomp
   end
   math_operation = "%"
   puts "Okay, let's find the remainder!"
 else
   puts "Sorry, I don't do that!"
 end

# calculates answer using do_math method
answer = do_math(first_num, second_num, math_operation)

puts "\n" #new line to separate results
puts "~*" * 10 + "~" #just a border
#shows user the formula along with the answer
puts "#{first_num} #{math_operation} #{second_num} = #{answer}"
puts "~*" * 10 + "~" #another border
