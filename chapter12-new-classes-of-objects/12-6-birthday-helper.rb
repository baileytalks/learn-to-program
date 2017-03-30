## Birthday helper

file = File.open ("birthdays.txt")

contents = file.read

lines_array = contents.split("\n");

birthdays = {}

lines_array.each do |x|
  date       = x[-12..-1]
  name       = x.split(date).to_s
  split_date = date.split(', ')

  year       = split_date[1][0..4]
  month      = split_date[0][0..3]
    if month[0] == ' '
      month = month[1..3]
    else
      month = month[0..2]
    end

    months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
    months.each do |m|
      if m == month
        month = month.index(m) + 1
      end
    end

  day        = split_date[0][5..6]

  birthdays[name] = ([year.to_i, month, day.to_i])
end

puts "Who's birthday do you want to know?"
input_name = gets.chomp

birthdays.each do |n,d|
  if n.include? input_name
    birthtime = Time.new((d[0]),(d[1]),(d[2]))
    time = Time.new
    current_year = time.year
    test_date = Time.local(current_year,d[1],d[2])
    diff = test_date - Time.new
    if diff > 0
      next_birthday_age = current_year - birthtime.year
      puts "#{n}'s next birthday is #{d[1]}/#{d[2]} #{time.year}. They will be #{next_birthday_age} years old."
    else
      next_birthday_age = 1 + current_year - birthtime.year
      puts "#{n}'s next birthday is #{d[1]}/#{d[2]} of #{time.year + 1}. They will be #{next_birthday_age} years old."
    end
  end
end
