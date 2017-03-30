## Write a brand new shuffle array method

## collect array as before
wordarray = []

while (word = gets.chomp) != ""
  wordarray.push word
if word == ""
  end
end

## define shuffle method

def shuffle array
  ## record the length of the array
  x = array.length
  ## create a second array
  changedarray = []
  ## define a new variable to count through the items
  y = 0

  ## go through the array X times and insert
  ## the number of the item and the array item
  ## into the new second array
  ## then loop by adding 1 to 'y'
  x.times do
    changedarray.insert(y, array[y])
    y += 1
  end

  ## create a new array for the shuffled array
  shuffled = []

  ## while the length of the array isn't zero
  while x > 0
    ## make 'y' a random number within the number of
    ## items in the array
    y = rand(x)
    ## push a slice of the changedarray item (not
    ## the number) into the new 'shuffled' array
    shuffled.push changedarray.slice!(y)
    ## keep looping by taking one from the length
    ## every time
    x -= 1
  end

  return shuffled

end

puts
puts shuffle wordarray
