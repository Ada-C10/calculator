def add(num_1, num_2)
  return num_1 + num_2
end

def subtract(num_1, num_2)
  return num_1 - num_2
end

def multiply(num_1, num_2)
  return num_1 * num_2
end

def divide(num_1, num_2)
  return num_1 / num_2
end

def exponential(num_1, num_2)
  return num_1 ** num_2
end

calculator_options = %w(add + subtract - multiply * divide / exponent **)

puts "\nWhat would you like to do?"
option = gets.chomp.downcase

until calculator_options.include?(option)
  puts "\nInvalid entry. Try again.\n"
  print "\nWhat would you like to do?"
  option = gets.chomp.downcase
end

puts "\nWhat is the first number?"
num_1 = gets.chomp.to_f

puts "\nWhat is the second number?"
num_2 = gets.chomp.to_f

case option
when "add", "+"
  calculate_addition_f = add(num_1.to_f, num_2.to_f)
  p calculate_addition_f
when "subtract", "-"
  calculate_subtraction_f = subtract(num_1.to_f, num_2.to_f)
  p calculate_subtraction_f
when "multiply", "*"
  calculate_multiplication_f = multiply(num_1.to_f, num_2.to_f)
  p calculate_multiplication_f
when "divide", "/"
  if num_2 == "0"
    puts "Does Not Exist"
  else
    calculate_division_f = divide(num_1.to_f, num_2.to_f)
  end
  p calculate_division_f
when "exponent", "**"
  calculate_exponential_f = exponential(num_1.to_f, num_2.to_f)
  p calculate_exponential_f
end
