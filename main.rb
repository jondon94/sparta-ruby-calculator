# Ruby Calculator

puts "Welcome to Sparta-Ruby_Calculator, Please Enter Your Name:"
name = gets.chomp
puts "Hello " + name + ", Which calculator would you like to use? (a)dvanced, (b)asic or (c)BMI?"
type = gets.chomp

if type == "a"
  #ADVANCED CALCULATOR
  puts 'You have chosen the advanced calculator. Here you can use exponents or root ooperators'
  puts "Choose which operator you would like to use an e(x)ponent or a (r)oot?"
  opB = gets.chomp
  if opB == "r"
    puts "Choose the number you wish to square root"
    n1 = gets.chomp.to_i
    answer = Math.sqrt(n1)
    puts answer
  elsif opB == "x"
    puts "Choose your first number"
    n1 = gets.chomp.to_i
    puts "Now choose your second number:"
    n2 = gets.chomp.to_i
    answer = n1**n2
    puts answer
  end

elsif type == "b"
  #BASIC CALCULATOR
  puts 'You have chosen the basic calculator. Here you can add, subtract, multiply and divide. Firstly, input your first number:'
  n1 = gets.chomp.to_f
  puts "Now choose your second number:"
  n2 = gets.chomp.to_f
  puts "Choose which operator you would like to use a(d)d, (s)ubtract, (m)ultiply or di(v)ide?"
  opB = gets.chomp
    if opB == "d"
      answer = n1 + n2
      puts answer
    elsif opB == "s"
      answer = n1 - n2
      puts answer
    elsif opB == "m"
      answer = n1 * n2
      puts answer
    elsif opB == "v"
      answer = n1 / n2
      puts answer
    else
      puts "Im sorry, lets start again"
    end

elsif type == "c"
  #BMI CALCULATOR
  puts 'Here you can calculate your BMI'
  puts 'Indicate which system you would like to use, (m)etric or (i)mperial'
  sys = gets.chomp
  if sys == "m"
    puts "You chosen to use the metric system, a wise choice. Please input your weight in kilograms"
    weight = gets.chomp.to_f
    puts "Please input your Height in metres"
    height = gets.chomp.to_f
    bmi = (weight / ( height * height ))
    puts bmi
  elsif sys == "i"
    puts "You have chosen to use the imperial system. Please input your weight in pounds"
    weight = gets.chomp.to_f
    puts "Please input your height in inches"
    height = gets.chomp.to_f
    bmi = (weight / ( height * height ))*703
    puts bmi
  end
else
  puts "I'm sorry " + name + " please try again."
end
