## Factorials

class Integer
  def factorial
    if self < 0
      return 'You can\'t do it with a negative number!'
    end

    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end
end

puts 3.factorial
puts 30.factorial
