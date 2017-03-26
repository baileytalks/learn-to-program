table = [["Chapter 1", "Beginning", "page 1"], ["Chapter 2", "Second Chapter", "page 3"], ["Chapter 3", "Last Chapter", "page 5"]]

line_width = 40

puts "Table of Contents".center(line_width)

table.each do |line|
  puts line[0].ljust(line_width) + line[1].center(line_width) + line[2].rjust(line_width)
end
