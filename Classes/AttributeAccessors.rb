class Demo
  attr_reader :r
  attr_writer :w
  attr_accessor :rw
  def initialize
    @r = 1
    @w = 2
    @rw = 3
  end

  def read_r
    r
  end

  def write_w(value)
    w = value
  end

  # += is undefined for attr_writer
  # def increment_w(value)
  #   w += value
  # end

  def write_rw(value)
    rw = value
  end

  # What? += is undefined for attr_accessor too...
  #But it works outside the class! Huh.
  # def increment_rw(value)
  #   rw += value
  # end
end

d = Demo.new
puts d.read_r

puts d.write_w(42)
# puts d.increment_w(2)

puts d.write_rw(52)
# puts d.increment_rw(2)

# d = Demo.new()

# puts "  attr_reader:"
# puts d.r
# puts "Write not supported!"
# # d.r = 2
# puts d.r
# puts

# puts "  attr_writer:"
# puts "Read not supported!"
# # puts d.w
# d.w = 7
# puts "+= is not supported!"
# # d.w += 1
# # puts d.w
# puts

# puts "attr_accessor:"
# puts d.rw
# d.rw += 1
# puts d.rw
# puts

# puts "attr_accessor:"
# puts d.rw
# d.rw = d.rw + 1
# puts d.rw
# puts

# puts "Inspect the class instance:"
# puts d.inspect
