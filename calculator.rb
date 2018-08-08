# Calculator Project - 8.8.18

# print welcome message and operator options
puts "Welcome to The Calculator! Which operator would you like to use?"
puts "1. add(+)"
puts "2. subtract(-)"
puts "3. multiply(*)"
puts "4. divide(/)"

# user input - operation
puts "Please choose one operator. You can enter the name or the symbol."
op = gets.chomp

valid_ops = %w[add + subtract - multiply * divide /]

# check for valid user input - operation
until valid_ops.include?(op)
  puts "Invalid input."
  puts "Please choose one operator. You can enter the name or the symbol."
  op = gets.chomp
end

# method to verify user input - integer
def integer?
  Integer(gets) rescue false
end

# method to print reprompt message
def number_reprompt
  puts "Please enter a valid number."
end

# user input - first number
puts "First number:"
first = integer?

# check for valid user input
until first
  number_reprompt
  first = integer?
end

# user input - second number
puts "Second number:"
second = integer?

# check for valid user input
until second
  number_reprompt
  second = integer?
end

# operation output
case op

when "add", "+"
  puts "#{first} + #{second} = #{first + second}"

when "subtract", "-"
  puts "#{first} - #{second} = #{first - second}"

when "multiply", "*"
  puts "#{first} * #{second} = #{first * second}"

when "divide", "/"

  # new input prompt if try to divide by 0
  while second == 0
    puts "You cannot divide by zero."
    puts "Please enter another number."
    second = integer?

    # check for valid user input
    until second
      number_reprompt
      second = integer?
    end

  end

  puts "#{first} / #{second} = #{first / second}"

end
