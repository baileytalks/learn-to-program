def say_moo number_of_moos
  puts "mooooooo.."*number_of_moos
end

say_moo(3)



def favourite_food name
  if name == "Bailey"
    "chocolate"
  elsif name == "Paulie"
    "crisps"
  else
    "dunno"
  end
end

puts favourite_food("Bailey")
puts favourite_food("Paulie")
puts favourite_food("Sue")
