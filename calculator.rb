def collect_valid_operator(operators_array)
  user_operator = gets.chomp.downcase.strip
  until operators_array.include?(user_operator)
    puts "ERROR: please enter one of the following operators..."
    operators_array.each do |operator|
      print " #{operator},"
    end
    puts
    user_operator = gets.chomp.downcase.strip
  end
  user_operator
end

def collect_user_numbers(operator, number)
  num_array = []
  number.times do |i|
    puts "Number #{i + 1}:"
    num = gets.chomp
    until num.to_i.to_s == num 
      puts "ERROR: please enter an integer or float:"
      num = gets.chomp
    end
    num = num.to_i
    while num == 0 && operator == "/" || num == 0 && operator == "%"
      puts "ERROR: it's not possible to use % or / on 0, please enter a different number:"
      num = gets.chomp.to_i
    end
    num_array << num
  end
  return num_array
end

def interpret_user_operator_choice(operator=collect_valid_operator)
  case operator
  when "+", "add"
    operator = "+"
  when "-", "subtract"
    operator = "-"
  when "*", "multiply"
    operator = "*"
  when "/", "divide"
    operator = "/"
  when "%", "modulus"
    operator = "%"
  when "**", "exponent"
    operator = "**"
  end
  return operator
end

def apply_num_with_operator(operator, array_of_numbers)
  num1 = array_of_numbers[0]
  num2 = array_of_numbers[1]
  answer = eval"num1 #{operator} num2"
  return answer
end

puts "Welcome to the Calculator Program! You will first choose an operator, then pick two numbers that you want to work with. Which operator do you want to use?"
operators_array = ["+","-","*","%","/","**","add","subtract","multiply","divide","modulus","exponent"]
user_operator = collect_valid_operator(operators_array)
puts "What numbers would you like to work with?"
user_num_array = collect_user_numbers(user_operator, 2)
puts "The answer is: #{user_num_array[0]} #{user_operator} #{user_num_array[1]} = #{apply_num_with_operator(user_operator, user_num_array)}"
