def make_numeric(num)
  if num.include?('.')
    num = num.to_f
  else
    num = num.to_i
  end
end

def number?(obj)
  obj = obj.to_s unless obj.is_a? String
  /\A[+-]?\d+(\.[\d]+)?\z/.match(obj)
end

def rounded(result)
  if result.to_s.include?('.')
    return result.round(2)
  else
    return result
  end
end

def add(num_1, num_2)
  result = num_1 + num_2
  return rounded(result)
end

def subtract(num_1, num_2)
  result = num_1 - num_2
  return rounded(result)
end

def multiply(num_1, num_2)
  result = num_1 * num_2
  return rounded(result)
end

def divide(num_1, num_2)
  num_1 = num_1.to_f
  num_2 = num_2.to_f
  result = num_1 / num_2

  if num_2 == 0
    puts "Does Not Exist"
  else
    return rounded(result)
  end
end

def exponential(num_1, num_2)
  result = num_1 ** num_2
  return rounded(result)
end

puts "\n======CALCULATOR====="

puts "\nHere are your options: "
puts "\n1. ADD +"
puts "2. SUBTRACT -"
puts "3. MULTIPLY *"
puts "4. DIVIDE /"
puts "5. EXPONENTIAL **"

puts "__________________________________"

calculator_options = %w(add + subtract - multiply * divide / exponential **)

print "\nWhat would you like to do? "
option = gets.chomp.downcase

until calculator_options.include?(option)
  puts "\nInvalid entry. Try again.\n"
  print "\nWhat would you like to do?"
  option = gets.chomp.downcase
end

print "\nWhat is the first number? "
user_input = gets.chomp

until number?(user_input)
  puts "\nInvalid entry. Try again.\n"
  user_input = gets.chomp
end

num_1 = make_numeric(user_input)

print "\nWhat is the second number? "
user_input = gets.chomp

until number?(user_input)
  puts "\nInvalid entry. Try again.\n"
  user_input = gets.chomp
end

num_2 = make_numeric(user_input)

puts case option
when "add", "+"
  calculate_addition = add(num_1, num_2)
  "\n#{num_1} + #{num_2} = #{calculate_addition}"
when "subtract", "-"
  calculate_subtraction = subtract(num_1, num_2)
  "#\n{num_1} - #{num_2} = #{calculate_subtraction}"
when "multiply", "*"
  calculate_multiplication = multiply(num_1, num_2)
  "\n#{num_1} * #{num_2} = #{calculate_multiplication}"
when "divide", "/"
  calculate_division = divide(num_1, num_2)
  "\n#{num_1} / #{num_2} = #{calculate_division}"
when "exponent", "**"
  calculate_exponential = exponential(num_1, num_2)
  "\n#{num_1} ** #{num_2} = #{calculate_exponential}"
end

puts "\n~Thanks For Using Mads Calculator!~"
