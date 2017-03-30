## Create an array from the user, then sort

wordarray = []

while (word = gets.chomp) != ""
  wordarray.push word
if word == ""
  end
end

puts wordarray.sort
