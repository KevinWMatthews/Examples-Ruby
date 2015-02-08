class VarDemo
  def initialize()
    @var = nil
  end

  #Custom attribute setter
  def var=(newvalue)
    @var = newvalue
  end

  #Custom attribute reader
  def var()
    @var
  end

  def increment
    self.var = var + 1
  end

  #TODO Hmmm...
  # def var+=(increment)
  #   @var = @var + increment
  # end
end

puts "Initialize:"
d = VarDemo.new
puts d.inspect
puts

puts "Setter:"
d.var = 7
puts d.inspect
puts

puts "Use reader and setter outside of class:
(.var = .var + 1)"
d.var = d.var + 1
puts d.inspect
puts

puts "Use reader and setter within class:
(self.var = var + 1)"
d.increment
puts d.inspect
puts
