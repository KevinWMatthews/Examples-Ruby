a = Array (0..9)

puts "Initialize a:"
puts a.inspect
puts

puts "Shift removes the first element:"
puts a.shift
puts a.inspect
puts

puts "Unshift adds to the beginning of the array:"
puts a.unshift(42)
puts a.inspect
puts

puts "Push adds to the end of the array:"
puts a.push(66)
puts a.inspect
puts

puts "Pop removes from the end of the array:"
puts a.pop
puts a.inspect
puts
