=begin
  Instance variables (signified with @) are unique to each instance of the class.
  They do not exist until a specific instance is created.

  Class variables are shared between the entire class.
  They seem to exist throughout the program's execution and
  can be accessed at any time using a class method.
  They are somewhat similar to global variables.

  In this example the class variable is used as a counter that tracks the number of
  Demo instances that have been created.
=end

class Demo
  @@classVar = 0

  def initialize(instanceVar)
    @instanceVar = instanceVar
    @@classVar += 1
  end

  #Can be a class or instance method, but makes more sense as a class method
  def self.showClassVar
    puts "classVar = #{@@classVar}"
  end

  def showInstanceVar
    puts "instanceVar = #{@instanceVar}"
  end
end

puts "No class instances:"
Demo.showClassVar
puts

puts "Create an instance of the Demo class:"
demo1 = Demo.new(77)
demo1.showInstanceVar
Demo.showClassVar
puts

puts "Create an instance of the Demo class:"
demo2 = Demo.new(99)
demo2.showInstanceVar
Demo.showClassVar
