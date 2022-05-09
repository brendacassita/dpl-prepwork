=begin # if
puts "Is it your birthday (y/n)"
answer = gets.strip.downcase
if answer == "y"
  puts "happy birthdaaaay"
end

# if + else
color = "red"
puts "Guess a color, red or black"
user_guess = gets.strip.downcase
if user_guess == color
  puts "correct!"
else
  puts "incorrect!"
end

# elsif
magic_number = 3
puts "Guess a number"
guess = gets.to_i
if guess == magic_number
  puts "correct!"
elsif guess < magic_number
  puts "too low!"
else
  puts "too high"
end

# switch
balance = 1000.0
puts "select from the following options"
puts "1) see balance"
puts "2) make a withdrawal"
puts "3) make a deposit"
puts "4) exit"

choice = gets.to_i

case choice
when 1
  puts balance
when 2
  puts "how much would you like to withdraw?"
  amt = gets.to_f
  if amt >= balance
    balance = balance - amt
  end
when 3
  puts "how much  would you like to deposit?"
  amt = gets.to_f
  balance = balance + amt
when 4
  exit
else
  puts "invalid choice"
end

# loops
puts "starting loop"
for i in 0..5
  puts "the number is not #{i}"
end
puts "loop is done"

foods = ['tacos', 'pizza', 'salad']
foods.each do |food|
  puts "we have #{food}"
end

number = 0
while number < 5
  puts "still looping"
  number = number + 1
end
puts "outside of loop"

def greeting(planet)
  puts "hello #{planet}"
end
greeting("earth")
greeting("mars")
greeting("pluto")

def add_two_numbers(number1, number2)
  puts "#{number1} plus #{number2} is #{number1 + number2}"
end
add_two_numbers(3,5)

def add(num1, num2)
  num1 + num2
end
result = add(2, 3)
puts result

def get_name
  puts "what is your name?"
  gets.strip
end

def get_age
  puts "what is your age?"
  age = gets.to_i
end
name = get_name
age = get_age
puts "#{name} is #{age} years old"

module MathExtra
  def MathExtra.add(num1, num2)
    puts "#{num1} + #{num2}"
    puts "calculating..."
    puts num1 + num2
  end
end
MathExtra.add(2,3)
=end

class Person 
  def initialize(name)
    @name = name
  end

  def get_name
    puts "this person is #{@name}"
  end
end

person = Person.new('Brenda')
person2 = Person.new('Zach')

person.get_name
person2.get_name