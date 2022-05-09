# this is a comment
# Ruby will ignore these lies

# print
print "\nhello\n"
print "ruby\n\n"

# printf
printf("the price is $%.2f\n\n", 0.05)

printf("%15s%6d\n", "John", 28)
printf("%15s%6d\n", "Sarah", 26)
printf("%15s%6d\n", "Dan", 25)

# puts
puts "hello world"

# p
p "Hello world"

# get user input
puts "What is your name?"
name = gets.chomp
puts "What is your favorite color?"
color = gets.chomp
puts "Welcome #{name}, #{color} is a great color!"
puts
puts "Five + Five = #{5+5}"
puts

number1 = 5
number2 = 2
puts "the first number is " + number1.to_s
puts "the second number is " + number2.to_s
puts "when you add them up together you get..."
puts number1+number2

puts "Enter your name"
name = gets.strip
puts "Enter your age" 
age = gets.to_i
if age >= 18
  #allow the user to continue
else 
  puts "Please get guardian's permission"
end
