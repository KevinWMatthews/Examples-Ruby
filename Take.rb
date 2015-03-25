a = Array (0..9)
puts a.inspect

t1 = Array.new.take(5)
puts "Array.new.take(5)"
puts t1.inspect
puts

puts "take(5)"
t2 = a.take(5)
puts t2.inspect
puts

puts "a.first"
f1 = a.first
puts f1.inspect
puts

puts "a.first(5)"
f2 = a.first(5)
puts f2.inspect
puts

puts "[].first"
puts [].first
puts

puts "a.last"
puts a.last
puts

puts "take(5).last"
puts t2.last
puts

puts "first(5).last"
puts f2.last
