puts "Hello! Would you like to use the calculator? Enter yes or no"
cal_use = gets.chomp

while cal_use == "yes"

  puts "Welcome to the Calculator program! Which operator would you like to use\n 1. add(+)\n 2. subtract(-)\n 3. multiply(*)\n 4. divide(/)"

  operator = gets.chomp

  if operator == "+" || operator == "add"
    puts "pick 1st number"
    num1 = gets.chomp.to_f

    puts "pick 2nd number"
    num2 = gets.chomp.to_f

    answer = num1 + num2

  elsif operator == "-" || operator == "subtract"
    puts "pick 1st number"
    num1 = gets.chomp.to_f

    puts "pick 2nd number"
    num2 = gets.chomp.to_f

    answer = num1 - num2

  elsif operator == "*" || operator == "multiply"
    puts "pick 1st number"
    num1 = gets.chomp.to_f

    puts "pick 2nd number"
    num2 = gets.chomp.to_f

    answer = num1 * num2

  elsif operator == "/" || operator == "divide"
    puts "pick 1st number"
    num1 = gets.chomp.to_f

    puts "pick 2nd number"
    num2 = gets.chomp.to_f

    while num2 <= 0
      puts "please enter a different number for your 2nd number, as it has to be greater than 0"
      num2 = gets.chomp.to_f
      end
      answer = num1 / num2
  else
    puts "please only pick from following operators\n 1. add(+)\n 2. subtract(-)\n 3. multiply(*)\n 4. divide(/)"
    operator = gets.chomp   
  end
  puts answer
  puts "would you like to play again? enter yes or no"
  cal_use = gets.chomp
end
