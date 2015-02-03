#LogicalOr.rb
=begin
  or and || are a logical or operator
  They return their first argument if it is true.
  Otherwise, they evaluate and return their second argument.
  Recall and nil and false are the only false values in ruby. 0 is not false!
  or has a lower precedence than the assignment operator, unlike ||
=end

puts "The || operator:"
puts "false || false"; puts false || false
puts "false || 2014"; puts false || 2014
puts "2014 || false"; puts 2014 || false
puts "true || 2014"; puts true || 2014
puts "2014 || true"; puts 2014 || true
puts

puts "The or operator:"
# Parenthesis are needed due to operator precedence?
puts "(false or false)"; puts (false or false)
puts "(false or 2014)"; puts (false or 2014)
puts "(2014 or false)"; puts (2014 or false)
puts "(true or 2014)"; puts (true or 2014)
puts "(2014 or true)"; puts (2014 or true)
puts

puts "0 evaluates to true:"
puts "0 || false"; puts 0 || false
puts "false || 0"; puts false || 0
puts

var = nil
puts "var = false or true"
puts "= has higher precedence than or, so 'false' will be stored"
print "The expression will evaluate to true: "
puts (var = false or true)
puts "var = #{var}"
puts

var = nil
puts "var = false || true"
puts "|| has a higher precedence that =, so 'true' will be stored"
print "The expression will evaluate to true: "
puts (var = false || true)
puts "var = #{var}"
puts
