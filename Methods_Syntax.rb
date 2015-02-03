puts "Here is the most basic syntax of a Ruby method:"
def welcome   # This is the header
  puts "Hello World! You're in Ruby!"   # This is the body
end

# To call the method,
welcome
#You don't need empty parenthesis, but you can put them there if you want to

# That's it!


puts
puts "Methods can take arguments:"
def oneArgument(arg)  # Notice that Ruby is much less picky than C  :)
  puts "You're in a method with one argument"
  puts arg
end

# Call the method with the argument in parenthesis (though the parenthesis are technically optional)
oneArgument(42)


puts
puts "Methods can very easily take a variable number of arguments.
This is called a splat argument."
def splatArgument(arg1, *splat)
  puts "  You're in a method with a variable number of arguments. Powerful!"
  puts "arg1: #{arg1}"
  splat.each { |argN| puts "splat: #{argN}" }
  puts
end

puts "One argument, no splat arguments:"
splatArgument("a1")
puts "On argument, four splat arguments:"
splatArgument("a1", "v1", "v2", "v3", "v4")
puts "On argument, two splat arguments:"
splatArgument("a1", 42, "v2")


puts "Values can be returned using the keyword return, but
I think it's more idiomatic to simply state the vairable name:"
def returnValue(arg1)
  arg1
end

puts "Argument passed: #{returnValue(77)}"
puts


puts "A method's arguments can have a default value:"
def defaultArgs(arg1 = "default")
  puts arg1
end

defaultArgs
defaultArgs("hello!")
