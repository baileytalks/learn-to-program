## Program logger

$nesting_depth = 0
$space = ' '

def log string, &block
  puts $space*$nesting_depth + "Beginning '#{string}'..."
  $nesting_depth = $nesting_depth + 1
  returned = block.call
  $nesting_depth = $nesting_depth - 1
  puts $space*$nesting_depth + "...'#{string}' finished, returning:"
  puts $space*$nesting_depth + returned.to_s
end

log 'outer block' do

log 'some little block' do

log 'yet another block' do
  'I like Thai food'
end
5
end

false
end
