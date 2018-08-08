puts %q{
"Welcome to the Calculator program! Which operator would you like to use?"
1. add(+)
2. subtract(-)
3. multiply(*)
4. divide(/)
5. exponify(**)
6. modulo(%)
Please choose one operator(name or symbol):
}
operator = gets.chomp

operator_choices = %W[add + subtract - multiply * divide / exponify ** modulo %]

until operator_choices.include?(operator)
  puts %q{
  Input error. Please choose from the following:
  1. add(+)
  2. subtract(-)
  3. multiply(*)
  4. divide(/)
  5. exponify(**)
  6. modulo(%)
  }
  operator = gets.chomp
end

def num_check(num)
   until num =~ /[[:digit:]]/ \
     && !(num =~ /[[:upper:]]/) \
     && !(num =~ /[[:lower:]]/) \
     && !(num =~ /[[:space:]]/)
     puts "Please make sure you are inputing a number (no spaces!). Try again:"
     num = gets.chomp.strip
   end
   num = num.to_i
end

puts "Please input your first number:"
num_one = gets.chomp.strip
num_one = num_check(num_one)

puts "Please input your second number:"
num_two = gets.chomp.strip
num_two = num_check(num_two)


def add(x, y)
   return x + y
end

def subtract(x, y)
   return x - y
end

def multiply(x, y)
  return x * y
end

def divide(x, y)
  if y != 0
    return '%.2f' % (x / y)
  else
    puts "You can't divide by zero!"
  end
end

def exponify(x, y)
  return x ** y
end

def modulo(x, y)
  return x % y
end


case operator
  when "add", "+"
    puts "#{num_one} + #{num_two} =  #{add(num_one, num_two)}"
  when "subtract", "-"
    puts "#{num_one} - #{num_two} =  #{subtract(num_one, num_two)}"
  when "multiply", "*"
    puts "#{num_one} * #{num_two} =  #{multiply(num_one, num_two)}"
  when "divide", "/"
    puts "#{num_one} / #{num_two} =  #{divide(num_one, num_two)}"
  when "exponify", "**"
    puts "#{num_one} ** #{num_two} =  #{exponify(num_one, num_two)}"
  when "modulo", "%"
    puts "#{num_one} + #{num_two} =  #{modulo(num_one, num_two)}"
  else
    "You didn't pick an operator. Please rerun the program."
end
