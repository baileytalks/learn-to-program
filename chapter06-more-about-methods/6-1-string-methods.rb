## Fancy string methods
## reverse, length, upcase, downcase

var1 = "stop"
var2 = "deliver repaid desserts"

puts var1.reverse
puts var2.reverse
puts var1
puts var2

puts ""

puts "What\'s your first name?"
firstname = gets.chomp

puts "What\'s your last name?"
lastname = gets.chomp

namelength = firstname.length + lastname.length

puts "Did you know there are " + namelength.to_s + " letters in your name, " + firstname + " " + lastname + "?"

puts ""

phrase = "Bailey Kursar is AWESOMELY awesome at ALL times"
puts "Plain = " + phrase
puts "Upcase = " + phrase.upcase
puts "Downcase = " + phrase.downcase
puts "Swapcase = " + phrase.swapcase
puts "Capitalize = " + phrase.capitalize

puts ""

line_width = 50

puts (       "Old Mother Hubbard".center(line_width))
puts (      "Sat in her cupboard".center(line_width))
puts ("Eating her curds and whey".center(line_width))

puts ""

line_width = 40

str = "--> text <--"

puts (str.ljust(line_width))
puts (str.rjust(line_width))

puts ""
