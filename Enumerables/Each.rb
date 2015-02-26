=begin
each (and its variations each_with_index and each_index)
can be used to iterate over a sequence of values
=end

array = ['one', 'two', 'three', 'four']

puts "Iterate over an array of values:"
array.each do |value|
  puts value
end
puts
#also
# array.each { |value| puts value }
# puts

puts "Iterate over the array of values while tracking the index:"
array.each_with_index do |value, index|
  puts "Index: #{index}, Value: #{value}"
end
puts

puts "Iterate over only the indices:"
array.each_index do |index|
  puts "Index: #{index}"
end
puts

#Of course, you aren't limited to iterating over arrays.
