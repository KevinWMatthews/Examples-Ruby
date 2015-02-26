=begin
map can be used to transform the elements of an enumerable
=end

puts "Populate an array:"
array = [1, 2, 3, 4, 5]
puts array
puts

puts "Invert the array:"
newArray = array.map { |x| -x }
puts newArray
puts

puts "Populate an array of strings:"
stringArray = ['one', 'two', 'three', 'four']
puts stringArray
puts

puts "Capitalize each word:"
stringArray.map! { |word| word.capitalize }
puts stringArray
puts

puts "Combining each_with_index with map:"
('a'..'k').each_with_index.map do |letter, index|
  puts "#{letter.capitalize} is letter #{index+1} of the alphabet"
end
