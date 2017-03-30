## Stringy superpowers

da_man = 'Mr. T'
big_T = da_man[4]
puts big_T

puts

prof = 'We tore the universe a new space-hole, alright!'
puts prof[12, 8]
puts prof[12..19]
puts
def is_avi? filename
  filename.downcase[-4..-1] == '.avi'
end

puts is_avi?('DANCEMONKEYBOY.AVI')
