def prompt_until_numeric(number)
  until  number == number.to_i.to_s || number == number.to_f.to_s
    puts "Whoops that's not a number, try again!"
    number = gets.chomp
  end
  return number
end
#can change to deal with integer or float, make if/else and return number.to_i
#return number.to_f

def prompt_until_numeric_and_nonzero(number)
until  (number == number.to_i.to_s || number == number.to_f.to_s) && number.to_i != 0
    puts "Whoops that's not a number we can divide by, try again!"
    number = gets.chomp
  end
  return number
end

def addition(first_number, second_number)
  return first_number + second_number
end

def subtraction(first_number, second_number)
  return first_number - second_number
end

def multiplication(first_number, second_number)
  return first_number * second_number
end

 def division(first_number, second_number)
     return first_number/second_number
 end

 def exponential(first_number, second_number)
   return first_number ** second_number
 end

 def modulo_calculation(first_number, second_number)
   return first_number % second_number
 end

puts "Welcome to my calculator!"
puts "What would you like to do?"
operators = ["add", "+", "substract","-", "multiply", "*", "divide", "/", "exponent", "**", "^", "modulo", "%"]
operators_prompt =["add(+)", "substract(-)", "multiply(*)", "divide(/)", "exponent(** or ^)", "modulo(%)"]
i = 1
operators_prompt.each do |operator|
  puts "#{i}: #{operator}"
  i += 1
end
puts "Please choose one operator (name or symbol):"
operator_selected = gets.chomp.downcase.to_s
until operators.include?(operator_selected)
  puts "Please enter 'add', 'substract', 'multiply', or 'divide'."
  operator_selected = gets.chomp.downcase.to_s
end

case operator_selected
when "add", "+"
    puts "We're doing addition!"
    return operator_selected = "+"
  when "substract", "-"
    puts "We're doing substraction!"
    return operator_selected = "-"
  when "multiply", "*"
    puts "We're doing multiplication!"
    return operator_selected
  when "divide", "/"
    puts "We're doing division!"
  when "exponent", "**", "^"
    puts "We're computing exponents!"
  when "modulo", "%"
    puts "We're computing modulos!"
  end

puts "Please enter your first number:"
first_number = gets.chomp
first_number = prompt_until_numeric(first_number)

puts "Please enter your second number"
second_number = gets.chomp
if operator_selected == "divide" || operator_selected == "/"
    second_number = prompt_until_numeric_and_nonzero(second_number)
else
  second_number = prompt_until_numeric(second_number)
end


#use send method below: num1.send(operator, num2)
case operator_selected
  when "add", "+"
      sum = addition(first_number.to_f, second_number.to_f)
      puts "#{first_number} + #{second_number} = #{sum}"
    when "substract", "-"
      difference = subtraction(first_number.to_f, second_number.to_f)
      puts "#{first_number} - #{second_number} = #{difference}"
    when "multiply", "*"
      product = multiplication(first_number.to_f, second_number.to_f)
      puts "#{first_number} * #{second_number} = #{product}"
    when "divide", "/"
      quotient = division(first_number.to_f, second_number.to_f)
      puts "#{first_number} / #{second_number} = #{quotient}"
    when "exponent", "**", "^"
      exponent_answer = exponential(first_number.to_f, second_number.to_f)
        puts "#{first_number} ^ #{second_number} = #{exponent_answer}"
    when "modulo", "%"
      remainder = modulo_calculation(first_number.to_f, second_number.to_f)
        puts "#{first_number} % #{second_number} = #{remainder}"
    end
