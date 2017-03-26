number = 100

while true
  puts (number - 1).to_s + " bottles of beer on the wall, " + (number - 1).to_s + " bottles of beer, Take one down, pass it around, " + (number - 2).to_s + " bottles of beer on the wall!"
  if number == 2
    break
  end
number = (number - 1)
end

