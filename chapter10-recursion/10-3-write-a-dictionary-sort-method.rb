## Dictionary Sort

## (1) ask the user for a list of words
wordarray = [ ]

while (word = gets.chomp) != ""
  wordarray.push word
if word == ""
  end
end

## (2) define the sort method
def sort array
  count = -2
  array.each do |word|
    count = count + 1
  end
  recursive_sort(array, [ ], [ ], count)
end

## (3) define the recursive_sort method
def recursive_sort listA, listB, sorted, nums

  x = 0
  y = 0
  z = 0

  ## CYCLE 1
  while x <= nums
    if listA[x].downcase <= listA[y].downcase
      y = y + 1
      if y == nums + 1
        sorted.push listA[x]
        x = x + 1
        y = 0
        z = z + 1
      end
    else
      listB.push listA[x]
      x = x + 1
      y = 0
    end
  end

  ## CYCLE 2
  nums = nums - z
  listA = [ ]
  x = 0
  y = 0
  z = 0
  if nums < 0
    x = nums + 5
  end

  while x <= nums

    if listB[x].downcase <= listB[y].downcase
      y = y + 1

      if y == nums + 1
        sorted.push listB[x]
        x = x + 1
        y = 0
        z = z + 1
      end

    else
      listA.push listB[x]
      x = x + 1
      y = 0
    end
  end

  nums = nums - z
  x = 0
  y = 0
  z = 0

  if nums < 0
    puts 'sorted list:'
    puts sorted
  else recursive_sort(listA, [ ], sorted, nums)
  end
end

sort wordarray
