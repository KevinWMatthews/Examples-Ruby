# Here is the most basic syntax of a Ruby method:
def welcome   # This is the header
  puts "Hello World! You're in Ruby!"   # This is the body
end

# To call the method,
welcome
#You don't need empty parenthesis, but you can put them there if you want to

# That's it!


# Methods can take arguments
def oneArgument(arg)  # Notice that Ruby is much less picky than C  :)
  puts "\nYou're in a method with one argument"
  puts arg
end

# Call the method with the argument in parenthesis (though the parenthesis are technically optional)
oneArgument(42)


# Methods can very easily take a variable number of arguments
# This is called a splat argument
def splatArgument(arg1, *splat)
  puts "\nYou're in a method with a variable number of arguments. Powerful!"
  puts "arg1: #{arg1}"
  splat.each { |argN| puts "splat: #{argN}" }
end

splatArgument("a1")
splatArgument("a1", "v1", "v2", "v3", "v4")
splatArgument("a1", 42, "v2")


# Values can be return using the keyword return
def returnValue(arg1)
  return arg1
end

puts "\nThis method should return the argument that you pass into it:"
puts returnValue(77)
