## Differences between arrays and hashes

dict_array = []
dict_hash  = {}

dict_array[0]  = 'candle'
dict_array[1]  = 'glasses'
dict_array[2]  = 'truck'
dict_array[3]  = 'Alicia'

dict_hash['shia-a'] = 'candle'
dict_hash['shaya']  = 'glasses'
dict_hash['shasha'] = 'truck'
dict_hash['sh-sha'] = 'Alicia'

dict_array.each do |word|
  puts word
end

dict_hash.each do |c_word, word|
  puts "#{c_word}: #{word}"
end

weird_hash = Hash.new

weird_hash[12] = 'monkeys'
weird_hash[[]] = 'emptiness'
weird_hash[Time.new] = 'no time like the present'

weird_hash.each do |key, phrase|
  puts "#{key}: #{phrase}"
end
