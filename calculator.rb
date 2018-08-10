def operator_method(num1, num2, operator)
  case operator
    when "+", "add"
      puts num1 + num2
    when "-", "subtract"
      puts num1 - num2
    when "*", "multiply"
      puts num1 * num2
    when "/", "divide"
      while num2 <= 0
        puts "please enter a number greater than 0"
        num2 = gets.chomp
      end
      puts num1 / num2
  end
end


def valid_number_user()
  puts "please enter a valid number"
  num = gets.chomp

  while num.to_i.to_s != num
    puts "please enter a valid number"
    num = gets.chomp
  end

return num.to_i
end

puts "Welcome to the Calculator program! Which operator would you like to use\n 1. add(+)\n 2. subtract(-)\n 3. multiply(*)\n 4. divide(/)"

operator = gets.chomp

num1 = valid_number_user()
num2 = valid_number_user()

operator_method(num1, num2, operator)

