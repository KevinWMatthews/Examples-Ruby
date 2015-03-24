puts "Symbols are a unique, immutable object"
puts :symbol.object_id
puts :symbol.object_id
puts

puts "Unlike strings"
puts "string".object_id
puts "string".object_id
puts

puts "Symbols are often used in hashes:"
symbol_hash = {
  :one => 1,
  :two => 2,
  :three => 3,
  :four => 4,
  :five => 5
}
puts "#{:five} #{symbol_hash[:five]}"
puts "#{:three} #{symbol_hash[:three]}"
puts

puts "Symbols are also used for accessor, setter, and getter methods"
puts "TODO"
puts

puts "HOLD THE PHONE! The syntax has changed:"
puts "No more hash rockets!"
new_hash = {
  one: 1,   # these are still symbols!
  two: 2,
  three: 3
}
puts "#{:three} #{new_hash[:three]}"
puts
