# The basics of Ruby blocks
#
# Blocks are like nameless methods
# Their scope is very limited, however; as soon as they finish executing they are no longer accessible.

# Blocks can be defined by do...end
puts "You're starting a block"
3.times do |iterator|
  puts iterator
end

#Blocks can be defined by {...}
puts "\nYou're starting a block"
3.times { |iterator| puts iterator*2 }


# A method can take a block as a parameter!
# For example, .times takes the block that you give it (in the {}) and executes it.
# .each does a similar thing: it iterates through whatever it's called on, passing it to the block
puts "\nYou're passing a block to a method"
[1, 2, 3, 4, 5].each { |i| puts i }
#I don't know how to create a method that takes a block
