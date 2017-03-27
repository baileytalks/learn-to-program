## Improved Ask Method ##

def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
      return 'Bed wetter!'
    else
      return 'LIES!'
    end
  else
    puts "Please answer yes or no"
    end
 end 
answer
end

ask "Burritos"
ask "Tacos"
wets_bed = ask "wets bed?"
ask "Cookies"

puts

puts wets_bed
