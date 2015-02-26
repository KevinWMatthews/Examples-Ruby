=begin
inject takes a collection and reduces it to a single value

inject(initial) {|memo, obj| block} -> obj
Combines all elements of an enum by applying the specified operation.

When you specify a block as above,
each element in the enum is passed an accumulator value (memo)
and the element (obj).
Initial specifies the initial value of the accumulator.


This is the same thing, essentially.
inject(initial, sym) -> obj
Combines all elements of the enum by applying the specified symbol (sic).
sym should be some operator, such as :+ or :*

=end

puts "   Inject with a symbol:"
puts "Sum of 1 to 10:"
puts (1..10).inject(:+)
puts "Sum of 1 to 10 with initial value"
puts (1..10).inject(-56, :+)
puts

puts "Inject with a block:"
puts (1..10).inject { |sum, n| sum + n}
puts (1..10).inject(5) { |sum, n| sum + n}
puts (1..10).inject(55) { |sum, n| sum + n}
puts (1..10).inject(-55) { |sum, n| sum + n}
puts

puts "Reduce is identical to inject:"
puts "Product of 1 to 10:"
puts (1..10).reduce(:*)
puts

puts "Sum of squares from 1 to 10:"
puts (1..10).reduce {|sum, x| sum+x**2}
puts

puts "Ternary operator and inject to find the minimum in a sequence:"
a = [65, 42, 1005, 23, -5, -17, 323]
min_in_sequence = a.inject do |min, x|
  min = min > x ? x : min
end
puts min_in_sequence
puts

puts "Create 10 fibonacci numbers:"
#Fibonacci numbers are the sum of the previous two numbers in the series.
#This starts from 0 and 1.
fib = 10.times.inject([0,1]) do |a, idx|
  a << a[-2] + a[-1]  # negative indices reference from the end of the array
end
puts fib.join(', ')
puts
