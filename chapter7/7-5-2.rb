## Deaf grandma program

count = 0

puts "I\'M A DEAF GRANDMA, WHADDYAWANT?"

while count < 3
  answer = gets.chomp 

  if answer == "BYE"
  count += 1
  puts "I can't hear you"

  elsif answer != answer.upcase
    puts "HUH? I CAN'T HEAR YOU!"
 
  else answer == answer.upcase
    puts "NO! NOT SINCE " + (1930+rand(21)).to_s + "!"
  end

  if count == 3
    puts "Oh, OK then love, off you pop."
  end

end  	
