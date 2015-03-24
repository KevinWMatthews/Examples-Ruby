hashLiteralNotation = { "Key" => "Value" }
hashConstructorNotation = Hash.new

puts "Literal Notation: #{hashLiteralNotation.inspect}"
puts "Constructor Notation: #{hashConstructorNotation.inspect}"

hashUsingSymbols = { :key => "Value" }
puts "Hash using Symbols: #{hashUsingSymbols.inspect}"
puts hashUsingSymbols[:key]

puts "HOLD THE PHONE! The syntax has changed:"
puts "No more hash rockets!"
new_hash = {
  one: 1,   # these are still symbols!
  two: 2,
  three: 3
}
puts "#{:three} #{new_hash[:three]}"
puts

