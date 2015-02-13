#Experiment with the slice method to remove an element from an array

puts "Populate an array:"
a = []
10.times {|i| a << i}
puts a.inspect
puts

#Careful, slice removes an array index!
puts "Remove element 0:"
puts a.slice!(0)
puts a.inspect
puts

puts "Remove element 3:"
puts a.slice!(3)
puts a.inspect
puts

puts "Remove element 7:"
puts a.slice!(7)
puts a.inspect
