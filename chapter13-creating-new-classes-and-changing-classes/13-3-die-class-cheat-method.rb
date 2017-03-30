## Instance variables, initialize, cheat method

class Die
  def initialize
    puts 'cough cough cough cheat? type cheat cough cough'
    response = gets.chomp
    if response == 'cheat'
      cheat
    else
     roll
   end
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

  def cheat
    puts 'cough cough what number? cough'
    a = gets.chomp.to_i
    if a <= 6 && a >=1
      @number_showing = a
    else
      puts 'that\'s not possible, stupid!'
    end
  end

end

puts Die.new.showing
