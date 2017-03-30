## Single vs Double quoted strings

buffy_quote_1 = '\'Kiss rocks\'?
                Why would anyone want to kiss...
                Oh, wait. I get it.'

buffy_quote_2 = "'Kiss rocks'?\n" +
                "Why would anyone want to kiss...\n" +
                "Oh, wait. I get it."

puts buffy_quote_1
puts
puts buffy_quote_2
puts
puts (buffy_quote_1 == buffy_quote_2)

puts

puts 'single (\') and double (") quotes'
puts "single (') and double (\") quotes"

name = 'Luke'
zip = 90210

puts

puts "Name = #{name}, Zipcode = #{zip}"
