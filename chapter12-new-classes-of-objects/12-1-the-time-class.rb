## The Time class

time = Time.new
time2 = time + 60 ## One minute after we run the code

puts time
puts time2

puts Time.local(2000, 1, 1)
puts Time.local(1987, 06, 29)

## the +0100 or +0000 represents how the time compares to GMT

puts "in GMT"
puts Time.gm(1987, 06, 29)

puts "How much older am I than Mish?"
puts (((((Time.local(1987, 06, 29) - Time.local(1989, 11, 23))/60)/60)/24)/365)
