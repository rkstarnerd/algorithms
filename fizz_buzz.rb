def fizz_buzz
  (1..100).each do |element|
    if (element%3 == 0) && (element%5 == 0)
      print "fizzbuzz "
    elsif element%3 == 0
      print "fizz "
    elsif element%5 == 0
      print "buzz "
    else
      print "#{element} "
    end
  end
end

fizz_buzz