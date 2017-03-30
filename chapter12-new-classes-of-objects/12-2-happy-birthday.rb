## Happy Birthday!

puts
puts "What year were you born?"
year = gets.chomp
puts
puts "and the month?"
month = gets.chomp
puts
puts "and the day?"
day = gets.chomp

age_secs = (Time.now - Time.local(year, month, day))

age = ((((age_secs/60)/60)/24)/365).to_i

puts "SPANK!\n" * age
