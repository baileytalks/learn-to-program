## Grandfather clock

def grandfather_clock block
  time = Time.new.hour
  time.to_i.times do
    block.call
  end
end

dong_proc = Proc.new do
  puts 'DONG!'
end

grandfather_clock dong_proc
