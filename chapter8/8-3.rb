wordarray = []

while (word = gets.chomp) != ""
  wordarray.push word
if word == ""
  end
end

puts wordarray.sort
