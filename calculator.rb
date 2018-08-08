puts "It's time to do some calculations!"
print "Pick one: Add(+), Subtract(-), Multiply(*), Divide(/): "
operator = gets.chomp.downcase

usable_operators = ["add", "subtract", "mutiply", "divide", "+", "-", "*", "/"]
until usable_operators.include?(operator)
  print "Try again: Pick one: Add(+), Subtract(-), Multiply(*), Divide(/): "
  operator = gets.chomp.downcase
end

case operator
  when  "add", "+"
    puts "Looks like you want to add"
  when "subtract", "-"
    puts "Time to subtract!"
  when "multiply", "*"
    puts "Ooh, multiplication!"
  when "divide", "/"
    puts "Looks like we will divide."
  end

  def number?(num)
    num = num.to_s unless num.is_a? String
    /\A[+-]?\d+(\.[\d]+)?\z/.match(num)
  end

  puts "Ok, give me a number: "
  first_number = nil
  loop do
    first_number = gets.chomp
    break if number?(first_number)
    puts "That isn't a number"
  end



  puts "Now type another number: "
  second_number = nil
  loop do
    second_number = gets.chomp
    break if number?(second_number)
    puts "That isn't a number!"
  end


  def add_return(first_number, second_number)
     return first_number.to_f + second_number.to_f
  end

  def subtract_return(first_number, second_number)
    return first_number.to_f - second_number.to_f
  end

  def mult_return(first_number, second_number)
    return first_number.to_f * second_number.to_f
  end

  def divide_return(first_number, second_number)
      return first_number.to_f / second_number.to_f
    end


add_result = add_return(first_number, second_number)
subtract_result = subtract_return(first_number, second_number)
mult_result = mult_return(first_number, second_number)
divide_result = divide_return(first_number,  second_number)

case operator
  when  "add", "+"
    add_return(first_number, second_number)
    puts add_result
  when "subtract", "-"
    subtract_return(first_number,second_number)
    puts subtract_result
  when "multiply", "*"
    mult_return(first_number, second_number)
    puts mult_result
  when "divide", "/"
    if second_number == "0"
      puts "You can't do that, try something else!"
    else
      divide_return(first_number, second_number)
      puts divide_result
  end
end
