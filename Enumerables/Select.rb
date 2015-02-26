=begin
select {|item| block} -> ary or nil

Invokes the block on each successive element of self (i.e. item),
deleting elements for which the block returns false
=end

puts "Declare an integer array"
a = Array (0..10)
puts a.inspect

puts "Return the entire array:"
puts a.select {|x| x}
puts

puts "Return even numbers only:"
puts a.select {|x| x%2==0}
puts

puts "Return odd numbers only:"
puts a.select {|x| x%2==1}
puts

puts "Return numbers > 5:"
puts a.select {|x| x>5}
puts
