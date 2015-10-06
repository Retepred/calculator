def get_input(order)
puts "Enter the #{order} number"
gets.to_f
end

def add
  get_input("1st") + get_input("2nd")
end

def subtract
  get_input("1st") - get_input("2nd")
end

def multiply
  get_input("1st") * get_input("2nd")
end

def metres_to_feet
  get_input("Metres") * 3.28084
end

def celsius_to_fahrenheit
  get_input("Celsius") * 1.8 + 32
end

def fahrenheit_to_celsius
  (get_input("Fahrenheit") - 32) /1.8
end

def feet_to_metres
  get_input("Feet") / 3.28084
end

def cube
  get_input("Length Number") ** 3
end

def cylinder
  Math::PI * get_input("Radius Number") ** 2 * get_input("Height Number")
end

def cone
  Math::PI * get_input("Radius Number") ** 2 * get_input("Height Number") / 3
end

def divide
  puts "Don't you dare put 0 in."
  a = 0
  b = 0
  until !(a==0||b==0)
    a = get_input("1st")
    b = get_input("2nd")
    if a==0 || b==0
      puts "I told you not to put 0 in. Try again, you imbecile."
    end
  end
  a/b
end

def power
  get_input("1st") ** get_input("2nd")
end

def square
  a=get_input("1st")
  Math::sqrt(a)
end

def answer (ans)
  puts "The answer is: #{ans}"
end

def menu
  # Clear the screen, and present the user with a menu
  puts `clear` # Backticks run things directly in the terminal
  puts "*** Calc-U-L8R ***"
  puts "Welcome to Peter's abusive calculator. You can call me Bob. Use the following options to navigate my menu. Press the keys that are surrounded by brackets like so (). I know this is probably more than you can take in right now, due to your rather pitiful inability to comprehend even basic instruction but please try your best.

  "
  print "(b)asic, (a)dvanced, age (c)alculator, (s)leeps till christmas, (i)mperial/metric converter, (v)olume calculator, (q)uit: "
  gets.chomp.downcase
end

#This allows the user to indicate when they are ready to move on.
def return_to_main
puts " \n \n \n Press enter to continue"
gets
end

def basic_calc
  # ask the user which operation they want to perform
  puts "Good choice, anything more advanced would have been too much for your puny mental faculty. Which mind numbingly simple operation do you want to perform? \n \n \n"
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp.downcase


  case operation
  when "a"
    answer(add)
  when "s"
    answer(subtract)
  when "m"
    answer(multiply)
  when "d"
    answer(divide)
  end
  return_to_main
end

def advanced_calc
  puts "Well you chose to select advanced. It says advanced, but really these calculations are very easy and you are just stupid. Try not to mess this up.\n \n \n"
  print "(p)ower up, or be a (s)quare? "
  operation = gets.chomp.downcase
  case operation
  when 'p'
    answer (power)
  when 's'
    answer (square)
  end
  return_to_main
end

def age_calculator
  puts "This nifty little service will tell you how old you are. An attempt to lie about your age will be pointless as your face will have already given us a good idea."
  print "Enter your birth year in the following format YYYY. \n \n \n"
  begin
    age_year = gets.chomp.to_i
    print Time.new.year - age_year
  end
  return_to_main
end
  

def sleeps_till_christmas
  puts "Stop referring to it as sleeps you mentally challenged muppet with childlike tendencies. \n \n \n"
  today = Time.new
  xmas_date = Time.new(2015,12,25)
  sleeps_left_secs = (xmas_date - today)
  day_in_seconds = 24 * 60 * 60
  sleeps_left_days = (sleeps_left_secs / day_in_seconds).ceil
  print "The number of days until you spend 24 hours remembering how lonely you are is #{sleeps_left_days}"
  return_to_main
end

def metric_imperial_converter
  puts "This is where fools can workout how to turn gobbledeegook into real units. But you will probably just mess it up seeing as you are a fool. \n \n \n"
  print "please choose from the following conversion types met(r)es to feet, (f)eet to metres, c(e)lsius to fahrenheit, fa(h)renheit to celsius"
  operation = gets.chomp.downcase
  case operation
  when 'r'
    answer (metres_to_feet)
  when 'f'
    answer (feet_to_metres)
  when 'e'
    answer (celsius_to_fahrenheit)
  when 'h'
    answer (fahrenheit_to_celsius)
  end
  return_to_main
end

def volume_calculator
  puts "This is where you can work out just how large of a swimming pool it will take to drown yourself in. \n \n \n"
  print "please choose from the following shapes (c)ube, c(y)linder or  c(o)ne"
  operation = gets.chomp.downcase
  case operation
  when 'c'
    answer (cube)
  when 'y'
    answer (cylinder)
  when 'o'
    answer (cone)
  end
  return_to_main
end

response = menu

until response == 'q'
  case response
  when 'b'
    basic_calc
  when 'a'
    advanced_calc
  when 'c'  
    age_calculator
  when 's'
    sleeps_till_christmas
  when 'i'
    metric_imperial_converter
  when 'v'
    volume_calculator    
  else
    puts "Please use a or b to choose an option, or press q to quit. It really isn't that hard you moron."
    return_to_main
  end
  response = menu
end