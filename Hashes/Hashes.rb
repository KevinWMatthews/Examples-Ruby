# Hash example
# Hashes are a key-value pair. The key can be used to gain easy access to the value.
# It's much like a database or a function.


puts "HOLD THE PHONE! The syntax has changed:"
puts "No more hash rockets!"
new_hash = {
  one: 1,   # these are still symbols!
  two: 2,
  three: 3
}
puts "#{:three} #{new_hash[:three]}"
puts



# Creating a hash using literal notation
hashEx = {
  "key1" => "value1",
  "key2" => "value2",
  "key3" => "value3",
  "key4" => "value4",
  "key5" => "value5",
}

# Create a hash using the Hash object
hashEx2 = Hash.new("Default value (if key is not found)")

# Display the contents of a hash
puts "Contents of hashEx:"
puts hashEx
puts

puts "Contents of hashEx2:"
puts hashEx2
puts

#Iterate over the hash keys
puts "Iterate over all key-value pairs in hashEx: |pair|"
hashEx.each do |pair|
  puts pair
end
puts

puts "Iterate over all key-value pairs in hashEx2: |pair|"
hashEx2.each do |pair|
  puts pair
end
puts

puts "Iterate over all keys and reference all values of hashEx: |key, value|"
puts "Reference 'key' and 'value'"
hashEx.each do |key, value|
  puts key + " " + value
end
puts

puts "Iterate over all keys and reference all values of hashEx2: |key, value|"
puts "Reference 'key' and 'value'"
hashEx2.each do |key, value|
  puts key + " " + value
end
puts

puts "Iterate over all keys and reference all values of hashEx: |key, value|"
puts "Reference 'key' and hashEx[key]"
hashEx.each do |key, value|
  puts key + " " + hashEx[key]
end
puts

puts "Iterate over all keys and reference all values of hashEx2: |key, value|"
puts "Reference 'key' and hashEx2[key]"
hashEx2.each do |key, value|
  puts key + " " + hashEx2[key]
end
puts

puts "Reference an invalid key:"
# using a variable
emptyKey=
puts "hashEx[emptyKey]: #{hashEx[emptyKey]}"
puts "hashEx2[emptyKey]: #{hashEx2[emptyKey]}"

#using a string
puts "hashEx[\"notAKey\"]: #{hashEx["notAKey"]}"
puts "hashEx2[\"notAKey\"]: #{hashEx2["notAKey"]}"
puts

#Fill a hash with data
puts "Filling a hash with data:"
newKey = "newKey"
hashEx[newKey] = "newValue"
hashEx2[newKey] = "newValue"

puts "hashEx[newKey] = #{hashEx[newKey]}"
puts "hashEx2[newKey] = #{hashEx2[newKey]}"
puts
puts
