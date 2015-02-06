#A Ruby Struct has a fixed number of attribute readers.
#I think that's all that you can add. No other attributes or methods?
StructDemo = Struct.new(:attReader1, :attReader2)

sd1 = StructDemo.new(1, 2)
sd2 = StructDemo.new(3, 4)

puts "Demostrate StructDemo's attributes on sd1"
puts sd1.attReader1
puts sd1.attReader2
puts

puts "Demostrate StructDemo's attributes on sd2"
puts sd2.attReader1
puts sd2.attReader2
puts

puts "Structs are useful for dealing with a set of data
with fixed qualities:"
puts

#Handle a single rectagle
class Rectangle
  attr_reader :s1, :s2
  def initialize(s1, s2)
    @s1 = s1
    @s2 = s2
  end

  def area
    s1 * s2
  end
end

# puts "Area of a single 2x3 rectangle"
# r = Rectangle.new(2, 3)
# puts r.area

puts "  BadRectangles"
#Handle a collection of rectagles
#Bad example:
#Notice that knowledge of how sides are stored propagates throughout the class.
class BadRectangles
  attr_reader :sides
  def initialize(sides)
    @sides = sides
  end

  def getSides
    #Remember, this iterates using an attribute reader
    sides.collect { |side| "w:#{side[0]} h:#{side[1]}" }
  end

  def areas
    #Remember, this iterates using an attribute reader
    sides.collect { |side| side[0] * side[1] }
  end
end

r = BadRectangles.new( [[1,1], [2,2], [3,3], [4,4]] )
puts "sides:"
puts r.sides
puts

puts "getSides:"
puts r.getSides
puts

puts "areas:"
puts r.areas
puts

puts
puts "  Good Rectangles"
#Good example:
class Rectangles
  attr_reader :sides
  def initialize(sides)
    @sides = sideify(sides)
  end

  def getSides
    sides.collect { |side| "w:#{side.width} h:#{side.height}" }
  end

  def areas
    sides.collect { |side| side.width * side.height }
  end

  def diagonals
    sides.collect { |side| Math.sqrt(side.width**2 + side.height**2) }
  end

  #A single rectangle instead of a collection... (a bit tricky)
  Rectangle = Struct.new(:width, :height)
  def sideify(sides)
    #Knowledge that 'sides' is an array is stored here.
    sides.collect { |side| Rectangle.new(side[0], side[1]) }
  end
end

r = Rectangles.new( [[1,1], [2,2], [3,3], [4,4]] )
puts "sides:"
puts r.sides
puts
puts "WOW"
puts "seriously. wow."
puts

puts "getSides:"
puts r.getSides
puts

puts "areas:"
puts r.areas
puts

puts "diagonals:"
puts r.diagonals
puts
