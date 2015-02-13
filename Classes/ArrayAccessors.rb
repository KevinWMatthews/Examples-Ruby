class ArrayDemo
  attr_accessor :array
  def initialize
    @array = []
  end
end

puts
puts "Initialize array:"
a = ArrayDemo.new()
puts a.inspect
puts

puts "Reader:"
puts a.array
puts

puts a.array[0] = 0
puts a.array[1] = 1
puts a.inspect
puts

puts "Array append (<<):"
8.times {|i| puts i+2; a.array << i+2}
puts a.inspect
puts


puts "Reinitialize array:"
a = ArrayDemo.new()
puts a.inspect
puts

array_length = 10
11.times { |counter|
  index = counter%array_length
  puts index
  if (index == array_length)
    index = 0
  end
  a.array[index] = counter }
puts a.inspect
puts
