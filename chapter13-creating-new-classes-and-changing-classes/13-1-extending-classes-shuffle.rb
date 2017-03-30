## Extending classes

## How about making your shuffle method on page
## 75 an array method? Or how about making factorial
## an integer method?
## 4.to_roman, anyone? In each case, remember to use self
## to access the object the method is being called on
## (the 4 in 4.to_roman).

## Making shuffle an array method

## return a shuffled version of the array
class Array
  def to_shuffle
    randomisedarray = [ ]
    count = -1
    x = 0
    y = 0

    self.each do |word|
      count = count + 1
    end

    while y <= count
      x = rand(count+1)

      if self[x] != 'used'
        randomisedarray.push self[x]
        self[x] = 'used'
        y = y + 1
      end
    end
  puts randomisedarray
  end
end


## ask the user for a list of words

wordarray = []

while (word = gets.chomp) != ""
  wordarray.push word
if word == ""
  end
end

puts
puts wordarray.to_shuffle
