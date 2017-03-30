## Refactor the psych survey to use a new method
## to save time

def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        answer = true
      else
        answer = false
      end
      break

    else
      puts 'Please answer either \'Yes\' or \'No\'.'
      end
    end
answer
end

ask 'Do you like tacos?'
ask 'Burritos?'
ask 'Lasagne?'
ask 'Cookies?'
wets_bed = ask 'Do you wet the bed?'
ask 'Ice cream?'
puts
puts 'DEBRIEFING - haha, this was really about bedwetting'
puts
puts wets_bed
