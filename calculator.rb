def run_calculator
  puts "Welcome to the calculator program!"
  operation_select
  run_again
end

def run_again
  puts "\nWould you like to run the calculator again? (yes or no)"
  input = gets.chomp
    if input == "yes"
      run_calculator
    end
  puts "Cool, cya later. "
end

#method for each type of calculator operation
def operation_select
  puts "Which operator would you like to use?"
  puts "1. add(+)"
  puts "2. subtract(-)"
  puts "3. multiply(*)"
  puts "4. divide(/)"
  puts "5. power(^)"
  puts "6. modulo(%)"
  puts "Please choose one operator (type name or symbol):"
  operation = gets.chomp
  numeric_input(operation)
end

def numeric_input(operation)
  puts "Type the first number you'd like to compute:"
  num1 = gets.chomp
    until is_numeric?(num1)
      puts "That's not a valid number. Let's try again."
      puts "Type the first number:"
      num1 = gets.chomp
    end

      if float?(num1)
        num1 = num1.to_f
      else
        num1 = num1.to_i
      end

  puts "Now the second number:"
  num2 = gets.chomp
    until is_numeric?(num2)
      puts "That's not a valid number. Let's try again."
      puts "Type the second number:"
      num2 = gets.chomp
    end
      # here we're figuring out whether user input was a float or a fixed num
      if float?(num2)
        num2 = num2.to_f
      else
        num2 = num2.to_i
      end
  triage_operation(operation, num1, num2)
end

#validates that the thing is a numeric value of some kind, returns true/false
def is_numeric?(num)
  num == num.to_i.to_s || num == num.to_f.to_s
end

#tells us whether the value is a float. returns true/false
def float?(num)
  num == num.to_f.to_s
end

def triage_operation(operation, num1, num2)
  puts "\nCalculating..."
  sleep 3
  case operation.downcase
  when "add", "+", "1"
      add(num1, num2)
  when "subtract", "-", "2"
      subt(num1, num2)
  when "multiply", "*", "3"
      mult(num1, num2)
  when "divide", "/", "4"
      div(num1, num2)
  when "power", "^", "5"
      power(num1, num2)
  when "modulo", "%", "6"
      modulo(num1, num2)
  else
      puts "\nLooks like you didn't choose a valid operator. Let's start again:\n\n"
      operation_select
  end
end

def add(num1, num2)
  print "#{num1} + #{num2} = #{crunch_add(num1,num2).round(2)}"
end

def crunch_add(num1, num2)
  num1 + num2
end

def subt(num1, num2)
  print "#{num1} - #{num2} = #{crunch_subt(num1, num2).round(2)}"
end

def crunch_subt(num1, num2)
  num1 + num2
end

def mult(num1, num2)
  print "#{num1} * #{num2} = #{crunch_mult(num1, num2).round(2)}"
end

def crunch_mult(num1, num2)
  num1 * num2
end

def div(num1, num2)
  print "#{num1} / #{num2} = #{crunch_div(num1, num2).round(2)}"
end

def crunch_div(num1, num2)
  num1.to_f / num2
end

def power(num, pow)
  print "#{num} ^ #{pow} = #{crunch_power(num, pow).round(2)}"
end

def crunch_power(num, pow)
  num ** pow
end

def modulo(num1, num2)
  print "#{num1} % #{num2} = #{crunch_modulo(num1, num2).round(2)}"
end

def crunch_modulo(num1, num2)
  num1 % num2
end

puts run_calculator
#or you can open in irb with irb -r ./calculator.rb and start running by typing run_calculator
