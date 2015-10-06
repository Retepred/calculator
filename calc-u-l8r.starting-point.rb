def get_input(order)
puts "Enter the #{order} number"
gets.to_f
end

def add
  a = get_input("1st")
  b = get_input("2nd")
  a+b
end

def subtract
  a = get_input("1st")
  b = get_input("2nd")
  a-b
end

def multiply
  a = get_input("1st")
  b = get_input("2nd")
  a*b
end
 
def divide
  puts "Don't you dare put 0 in."
  a = 0
  b = 0
  until !(a==0||b==0)
    a = get_input("1st")
    b = get_input("2nd")
    if a==0||b==0
      puts "I told you not to put 0 in. Try again. Seriously it isn't hard, how do you even get out of bed in the morning?"
    end
  end
  a/b
end

def power
  a = get_input("1st")
  b = get_input("2nd")
  a**b
end

def square
  a=get_input("1st")
  ans = Math::sqrt(a)
end

def answer (ans)
  puts "After crunching some serious code you couldn't even begin to understand with your feeble human mind I have worked your little problem out. THE the answer is: #{ans}"
end

def menu
  # Clear the screen, and present the user with a menu
  puts `clear` # Backticks run things directly in the terminal
  puts "*** Calc-U-L8R ***"
  puts "Welcome to Peter's abusive calculator. You use me to calculate. It's easy, like you. 

Please choose whether to keep it simple, or push the boundaries. I recommend keeping it simple, you simpleton."
  print "(b)asic, (a)dvanced, or (q)uit: "
  gets.chomp.downcase
end

def return_to_main
puts "Press enter to continue, but I would prefer if you left this math stuff to the intelligent people. Not you."
gets
end


def basic_calc
  # ask the user which operation they want to perform
  puts "Good choice - you probably couldn't handle to harder stuff anyway."
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
end

def advanced_calc
  #nothing here yet, add power and square root
  puts "Dangerous territory buddy - what witchcraft do you want to do with numbers? Your mother may have called you special, but I have a feeling you are going to break me with your moronic ways."
  print "(p)ower up, or be a (s)quare? "
  operation = gets.chomp.downcase
  case operation
  when 'p'
    answer (power)
  when 's'
    answer (square)
  end
end


# run the app...

response = menu

until response == 'q'
  case response
  when 'b'
    basic_calc
  when 'a'
    advanced_calc
  else
    puts "Please use a or b to choose an option, or press q to quit. It isn't hard you moron."
    return_to_main
  end

  response = menu
end