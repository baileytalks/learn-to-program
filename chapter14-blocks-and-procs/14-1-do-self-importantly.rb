## Methods that take procs

def do_self_importantly some_proc
  puts "Everybody HOLD ON, I'm doing something"
  some_proc.call
  puts "OK I'm done, as you were"
end

say_hello = Proc.new do
  puts 'hello'
end

say_goodbye = Proc.new do
  puts 'goodbye'
end

do_self_importantly say_hello
do_self_importantly say_goodbye
