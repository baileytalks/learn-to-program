## Ranges

letters = 'a'..'c'

puts(['a','b','c'] == letters.to_a)

('A'..'Z').each do |letter|
  print letter
end

puts

god_bless_the_90s = 1990..2000
puts god_bless_the_90s.min
puts god_bless_the_90s.max
puts(god_bless_the_90s.include?(1999 ))
