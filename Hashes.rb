# Hash example
# Hashes are a key-value pair. The key can be used to gain easy access to the value.
# It's much like a database or a function.

hashExample = Hash.new("Default value (if key is not found)")

# Prints entire contents of the hash, which is currently nothing
puts "Hash contents:"
puts hashExample

# Element won't be found so this prints default value
puts "\nValue for key notAnElement:"
puts hashExample["notAnElement"]

# Add hash elements using
# <name>["key"] = "value"
hashExample["e1"] = 1
hashExample["e2"] = "e2"

# Prints entire contents of the hash
puts "\nHash contents:"
puts hashExample

# To access an individual element of a hash,
# name["key"]
puts "\nValue for key e1:"
puts hashExample["e1"]
puts "\nValue for key e2:"
puts hashExample["e2"]

# To iterate over the entire hash, you'll probably need two iterators:
# one for the key and one for the hash
puts "\nIterating over the entire hash:"
hashExample.each do |key, value|
  puts "The key is: #{key}"
  puts "The value is: #{hashExample[key]}"
end
