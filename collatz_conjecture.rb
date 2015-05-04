def oneness(num)
  if num == 1
    puts "You have acheieved oneness."
  elsif num.even?
    oneness(num /= 2)
  else
    oneness((3*num) + 1)
  end
end