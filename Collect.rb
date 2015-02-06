=begin
  Collect iterates over a collection, much like each.
  Instead of returning the last member of the collection,
  it returns the entire collection.
  It is most often used to modify the input collection.
=end

def collectDemo(arg)
  arg.collect {|i| i**2}
end

array = [1, 2, 3, 4, 5]
puts "Input:"
puts array
puts
puts "Output:"
puts collectDemo(array)
puts
