# calculates answer after taking user input for operation to be 
  

  def symbol_entry(symbol)
    if symbol != "add" && symbol != "+" && symbol != "subtract" && symbol != "-" && symbol != "multiply" && symbol != "*" && symbol != "divide" && symbol != "/" && symbol != "^" && symbol != "%"
      puts "Invalid symbol input!"
    end 
  end

  def first_number
    print "Please enter first number: "
    value1 = gets.chomp.to_f
    if value1.to_i == 0 && value1 != "0"
      puts "Invalid number!"
    end
    return value1
  end

  def second_number
    print "Please enter second number: "
    value2 = gets.chomp.to_f
    if value2.to_f == 0.0
      puts "Invalid number!"
    end
    return value2
  end

  
  def symbol_check(symbol, value1, value2) 
    print "Answer: " 
    case symbol
    when "add", "+"
      print "#{value1} + #{value2} = " 
      ans = value1 + value2
    when "subtract", "-" 
      print "#{value1} - #{value2} = "  
      ans = value1 - value2
    when "multiply" , "*"
      print "#{value1} * #{value2} = " 
      ans = value1 * value2
    when "divide", "/"  
      if value2 != 0
        print"#{value1} / #{value2} = " 
        ans = value1 / value2
      else
        puts "Infinity"
      end
    when "^"
      print"#{value1} ** #{value2} = " 
      ans = value1 ** value2 
    when "%" 
      print"#{value1} % #{value2} = " 
      ans = value1 % value2 
    else 
      puts "Unable to calculate!"
    end
    return ans  
  end 

  def round_off(ans)
    if ans % 1 > 0.0
      puts ans.round(4)
    else  
      puts ans.to_i 
    end  
  end

  puts "Welcome to the calculator program! Which operator would you like to use? "
  puts "1. add(+)"
  puts "2. subtract(-)"
  puts "3. multiply(*)"
  puts "4. divide(/)" 
  print "Please use one operator name or symbol: "
  symbol = gets.chomp

  
  symbol_entry(symbol)
  first_number
  second_number
  symbol_check(symbol, value1, value2)
  round_off(ans)
