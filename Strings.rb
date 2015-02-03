=begin
  Ruby Strings
  In Ruby, strings are mutable (liable to change)
  i.e. they can expand as needed.
  puts automatically calls to_s on any non-string object it is passed
=end

puts "Hello World!"
# Can use " or ' for strings, but ' is more efficient
puts 'Hello again, World!'
# String concatenation
puts 'I like' + ' Ruby'
# Escape sequence: \
puts 'It\'s my Ruby'
puts 'Mine!!'.upcase
# Displays the string three times
puts 'Hello' * 3
# defining a constant
PI = 3.1416
puts PI

puts
puts `dir`  #backticks (`) send the enclosed command to the operating system to be executed

