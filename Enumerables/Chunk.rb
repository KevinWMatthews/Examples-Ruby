a = [1, 2, 3, 4, 4, 5, 5, 5, 6, 6, 6, 6]
p a
puts

puts a.inspect

puts "even?, input"
result = a.chunk { |i| i.even? }
result.each { |key, value| p [key, value] }
puts

puts "Count, input"
result = a.chunk { |i| a.count(i) }
result.each { |key, value| p [key, value] }
hash = Hash.new

result.each { |count, item| hash[item] = count }

p hash
