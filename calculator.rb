# This program is designed for user to calculate
# prepared by jessie Zhang at July 8, 2018

# check for error
def error_num(num)
  while num!= num.to_f.to_s && num != num.to_i.to_s
    print "Invalid input, enter numbers only: "
    num = gets.chomp
  end
  return num
end
# check if integer
def if_int(num)
  if num.to_i == num
    return num.to_i
  else
    return num
  end
end

# ask for user input
def user_input
  array_op = [ { name:"add", sym:"+", item:"1"}, { name:"substract", sym:"-", item:"2" }, { name:"multiply", sym:"*", item:"3" }, { name:"divide", sym:"/", item:"4" }, { name:"exponents", sym:"^", item:"5" }, { name:"modulus", sym:"%", item:"6"} ]

  array_check = []
  array_input = []

  puts "Welcome to the Calculator program!"

  6.times do |i|
    array_check += array_op[i].values
    puts "#{i+1}. #{array_op[i][:name]} #{array_op[i][:sym]}"
  end

  print "Which operator would you like to use? "
  input_operator = gets.chomp

  until array_check.include?(input_operator)
    print "wrong input, try again: "
    input_operator = gets.chomp
  end

  array_input.push(input_operator)

  print "Enter the number before the operator: "
  input_1 = gets.chomp
  num_1 = error_num(input_1).to_f
  array_input.push(num_1)

  print "Enter the number after the operator: "
  input_2 = gets.chomp
  num_2 = error_num(input_2).to_f
  array_input.push(num_2)
  return array_input
end
# calculate
def calculation(operator, obj_1, obj_2)
  case operator
    when "1", "add", "+"
      return obj_1 + obj_2
    when "2", "substract", "-"
      return obj_1 - obj_2
    when "3", "multiply", "*"
      return obj_1 * obj_2
    when "4", "divide", "/"
      return obj_1 / obj_2
    when "5", "exponents", "^"
      return obj_1 ** obj_2
    when "6", "modulus", "%"
      return obj_1 % obj_2
  end
end
# print output
def print_result(operator, num_1, num_2, num_calcu)
  operand = ""
  case operator
    when "1", "add", "+"
      operand = "+"
    when "2", "substract", "-"
      operand = "-"
    when "3", "multiply", "*"
      operand = "*"
    when "4", "divide", "/"
      operand = "/"
    when "5", "exponents", "^"
      operand = "^"
    when "6", "modulus", "%"
      operand = "%"
  end
  puts "\nHere is the result: "
  puts "#{num_1} #{operand} #{num_2} = #{num_calcu}\n\n"
end

# Main
array_entered = user_input
if ["divide", "/", "modulus", "%", "4", "6"].include?(array_entered[0]) && array_entered[2] == 0
  puts "Error, cannot / 0 or % 0. "
else
  result = calculation(array_entered[0], array_entered[1], array_entered[2])
  result_f = if_int(result)
  num_first = if_int(array_entered[1])
  num_second = if_int(array_entered[2])
  print_result(array_entered[0], num_first, num_second,result_f)
end
