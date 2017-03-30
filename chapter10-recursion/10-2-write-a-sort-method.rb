## Write a sort method and use on a brand new
## user created array, as in chapter 8

## original code as in chapter 8
wordarray = []

while (word = gets.chomp) != ""
  wordarray.push word
if word == ""
  end
end

## defining the sort method for the above array
## this is a wrapper method
def sort array
  recursive_sort array, []
end

## defining the recursive_sort method mentioned above
## there are two parameters passed for this method,
## 'unsorted' is the original array, as mentioned above
## the second parameter is a NEW array, 'sorted'

def recursive_sort unsorted, sorted
  ## if the length of the array is 0, return an empty array
  if unsorted.length <= 0
    return sorted
  end

## Here's the meaty part
## (1) create a variable for the LAST item of the array,
## which is called 'smallest'
## (2) create a new array called still_unsorted
## (3) go through each item in the array and compare
## to 'smallest'
## (4) if the item comes before the last item ('smallest')
## push the last item into the still_unsorted array
## (5) reset the item to go to the next one
## (6) if the item come after the smallest, push the item
## to the still_unsorted array
## (7) once you've gone through the whole array, you'll
## be left with the earliest item in the alphabet
## (8) push that item to the sorted array
## (9) use recursive_sort to keep going until finished

  smallest = unsorted.pop
  ## pop removes the last item of
  ## the array and tells you what it was
  still_unsorted = []
  unsorted.each do |item|
    if item < smallest
      still_unsorted.push smallest

      ## must reset by saying that the last item is
      ## now the new item to look at
      smallest = item

    ## otherwise, if the item comes after the 'smallest',
    ## push that into the still_unsorted array
    else
      still_unsorted.push item
    end
  end

## send the last item left to the sorted array
  sorted.push smallest

## keep going through the still_unsorted array
  recursive_sort still_unsorted, sorted

end

puts
puts "wordarray.sort -->"
puts wordarray.sort
puts
puts "sort wordarray -->"
puts sort wordarray
