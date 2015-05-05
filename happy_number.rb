=begin
A happy number is a number defined by the following process:
Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the procuess until the number equals 1, or it loops endlessly in a cycle which does not include 1.
=end

def digits(num)
  num = num.to_i
  digits_array = []

  while num > 0
    digits_array << num % 10
    num /= 10
  end
  digits_array.reverse
end

def happy_number(num)
  new_num = 0
  sequence = []

  digits(num).each do |digit|
    new_num += digit**2
    sequence << new_num
  end

  if new_num == 1
    puts "Yay, this is a happy number!"
  elsif (new_num == sequence[0]) && (sequence.count != 1)
    puts "Sadly, this number is unhappy."
  else
    happy_number(new_num)
  end
end

puts "Let's find out if your number belongs to the happy sequence."
puts "Enter any number:"
num = gets.chomp

happy_number(num)