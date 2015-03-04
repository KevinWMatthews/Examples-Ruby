=begin

Identical to find.

detect { |obj| block } -> obj or nil
detect -> enumerator

Pass each entry in the enumerable to the block.
Returns the first value for which block is true.
If no object matches, return nil
or call ifnone and return the specified value.

If no block is given, the method returns an enum.
=end

puts "Single match:"
puts (1..10).detect {|i| i==7}
puts

puts "First value is returned if multiple are true:"
puts (1..10).detect {|i| i % 2 == 0}
puts

puts "No matches:"
puts (1..10).detect {|i| i==11}
puts

puts "Set ifnil:"
puts "(ifnone must be callable)"
puts (1..10).detect(puts "No value found!") {|i| i==11}
puts
