## The new, improved 99-bottles program!

def english_number number
    ## Accept numbers 0 to 100
    if number < 0
      return "Enter a number greater than zero, please!"
    end
    if number == 0
      return "zero"
    end
    ## This is the string we'll return
    num_string = ""

    ## Fun with arrays:
    ones_place = ['one',       'two',      'three',
                  'four',      'five',     'six',
                  'seven',     'eight',    'nine']
    tens_place = ['ten',       'twenty',   'thirty',
                  'forty',     'fifty',    'sixty',
                  'seventy',   'eighty',   'ninety']
    teenagers  = ['eleven',    'twelve',   'thirteen',
                  'fourteen',  'fifteen',  'sixteen',
                  'seventeen', 'eighteen', 'nineteen']

    ## 'left' is how much of the number
    ## we have yet to write out
    ## 'write' is the part we are
    ## writing out right now

    left = number
    write = left/100000000        ## How many millions left?
    left = left - write*100000000 ## Subtract those millions

    if write > 0
      millions = english_number write
      num_string = num_string + millions + ' million'
      if left > 0
        num_string = num_string + ' '
      end
    end


## THOUSANDS
    write = left/1000        ## How many hundreds left?
    left = left - write*1000 ## Subtract off those hundreds

    if write > 0
      thousands = english_number write
      num_string = num_string + thousands + ' thousand'
      if left > 0
        num_string = num_string + ' '
      end
    end

## HUNDREDS
    write = left/100        ## How many hundreds left?
    left = left - write*100 ## Subtract off those hundreds

    if write > 0
      ## HERE is the recursion
      hundreds = english_number write
      num_string = num_string + hundreds + ' hundred'
      if left > 0
        ## So we don't write 'two hundredfifty'
        num_string = num_string + ' '
      end
    end

    write = left/10        ## How many tens left?
    left = left - write*10 ## Subtract off those tens

    if write > 0
      if ((write == 1) and (left > 0))
        ## Since we can't write 'tenty-two'
        ## we need to have an exception for the teenagers
      num_string = num_string + teenagers[left-1]
      ## The '-1' is because teenagers[3] is
      ## 'fourteen', not 'thirteen'
      ## Since we took care of the digit in the
      ## ones place already, we have nothing else to write
      left = 0
    else
      num_string = num_string + tens_place[write-1]
      ## The '-1' is because tens_place[3] is
      ## forty, not thirty
    end

    if left > 0
      ## so we don't write 'sixtyfour'
      num_string = num_string + '-'
    end
  end

  write = left ## How many ones to write out?
  left = 0     ## Subtract off those ones

  if write > 0
    num_string = num_string + ones_place[write-1]
    ## the '-1' is because ones_place[3] is
    ## four, not three
  end

  ## Now just return num_string
  num_string
end

## NOW IT'S BOTTLES OF BEER TIME!

number = 9999

while true
  puts english_number(number - 1).capitalize + " bottles of beer on the wall, "
  puts english_number(number - 1).capitalize + " bottles of beer,"
  puts "Take one down, pass it around,"
  puts english_number(number - 2).capitalize + " more bottles of beer on the wall!"
  puts
  if number == 3
    break
  end
number = (number - 1)
end

puts "One more bottle of beer on the wall,"
puts "One last bottle of beer,"
puts "Take it down, pass it around,"
puts "No more bottles of beer on the waaaaallllll!"
puts
