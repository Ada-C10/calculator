# checks if user answer is either + or add
def adding_format()
  ($answer =~ /[+]/ && $answer.length == 1) || ($answer =~ /[aA][dD][dD]/ && $answer.length == 3)
end

# checks if user answer is either - or subtract
def subtracting_format()
  ($answer =~ /[-]/ && $answer.length == 1) || ($answer =~ /[sS][uU][bB][tT][rR][aA][cC][tT]/ && $answer.length == 8)
end

# checks if user answer is either * or multiply
def multiplying_format()
  ($answer =~ /[*]/ && $answer.length == 1) || ($answer =~ /[mM][uU][lL][tT][iI][pP][lL][yY]/ && $answer.length == 8)
end

# checks if user answer is either / or divide
def dividing_format()
  ($answer =~ /[\/]/ && $answer.length == 1) || ($answer =~ /[dD][iI][vV][iI][dD][eE]/ && $answer.length != 6)
end

# calculates the first and second number depending on what the operator is
def calculate(change_operator)
  print "Enter your first number: "
  first_num = gets.chomp

  # checks if user only entered in numbers
  while first_num !~ /\d/
    print "Numbers only. Try again: "
    first_num = gets.chomp
  end

  print "Enter your second number: "
  sec_num = gets.chomp

  # checks if user only entered in numbers
  while sec_num !~ /\d/
    print "Numbers only. Try again: "
    sec_num = gets.chomp
  end

  # prompts user to re-enter a number greater than 0 when dividing
  while (sec_num == 0 && change_operator == "/")
    print "You can't divide by 0. Try again: "
    sec_num = gets.chomp
  end

  # shows result of calculation
  result = first_num.to_i.send(change_operator, sec_num.to_i)
  puts "\nResult: #{result}"
end

# explains to user what they should enter
puts "Welcome to the Calculator program! Which operator would you like to use?"
puts "1. add(+) \n2. subtract(-) \n3. multiply(*) \n4. divide(/)"
print "\nPlease choose one operator (name or sympbol): "
$answer = gets.chomp

# checks if user entered answer in correct format
until adding_format() || subtracting_format() || multiplying_format() || dividing_format()
  print "Incorrect answer. Try again: "
  $answer = gets.chomp
end

# asks user to enter first and second number then calculate if
# the operator they entered is in correct format
if adding_format()
  calculate("+")
elsif subtracting_format()
  calculate("-")
elsif multiplying_format()
  calculate("*")
elsif dividing_format()
  calculate("/")
end
