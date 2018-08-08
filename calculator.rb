def operator_list
  puts "add(+)"
  puts "subtract(-)"
  puts "multiply(*)"
  puts "divide(/)"
  puts "exponify(^)"
  puts "modulate(%)"
end

def calculator(num1, o, num2)
  case o
  when "+", "add"
    outcome = num1 + num2
  when "-", "subtract"
    outcome =  num1 - num2
  when "x", "multiply"
    outcome = num1 * num2
  when "/", "divide"
    if num2 == 0
      outcome = "undefined"
    elsif
      outcome = num1 / num2
    end
  when "^", "exponify"
    outcome = num1 ** num2
  when "%", "modulate"
    outcome = num1 % num2
end
end

operators = ["add", "+", "subtract", "-", "multiply", "x", "divide", "/",
  "exponify", "^", "modulate", "%"]

puts "Welcome to the Calculator program! Which operator would you like to use?"
operator_list

puts "\nPlease choose an operator(name of symbol)"
operator_choice = gets.chomp.strip.downcase

until operators.include?(operator_choice) do
  puts "\nNo, no, look again carefully and type in specific name or symbol"
  operator_list
  print "\nOperator: "
  operator_choice = gets.chomp.strip.downcase
end

puts "\nPlease enter two whole numbers to calculate:"

# put numbers into loop to reduce repition -
# is there a better way to do this with only 2 numbers?
# .empty? checks will request additional input if input is nothing(user just entered)
numbers = []
2.times do |x|
  print "Number #{x+1}: "
  numbers[x] = gets.chomp.strip
  while numbers[x] =~ /[A-Za-z]/ || numbers[x].empty? do
    puts "\nHold up, a whole number only please."
    numbers[x] = gets.chomp
  end
  numbers[x] = numbers[x].to_i
end

puts "Final outcome: #{numbers[0]} #{operator_choice} #{numbers[1]} = \
#{calculator(numbers[0], operator_choice, numbers[1])}"
