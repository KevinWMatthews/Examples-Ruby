#Compact removes nils from an array


puts "Array.new(10) is not initialized:"
a = Array.new(10)
puts a.inspect
puts

puts "Use compact:"
puts a.compact
puts puts

puts "Array.new(10) has some data:"
a = Array.new(10)
a[2] = 2
a[7] = 7
puts a.inspect
puts
puts "Use compact:"
puts a.compact
