#Experiment with the shift method to remove an element from an array

puts "Populate an array:"
a = []
10.times {|i| a << i}
puts a.inspect
puts

puts "Remove the first element of the array:"
a.shift
puts a.inspect
puts

puts "Remove the first element of the array:"
a.shift
puts a.inspect
puts

puts "Remove the first two elements of the array:"
a.shift(2)
puts a.inspect
puts
