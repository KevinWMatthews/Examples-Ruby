=begin
Ruby is object oriented. Everything is an object.
A class is used to specify the form of an object.
It combines data representation (variables) and methods (functions-ish) into one thing: an object.
Both data and methods within a class are called "members" of the class.
=end

# First letter must be capitalized! This signals Ruby that the "class/module name is CONSTANT"
class DemoClass
  def initialize(argn)
    puts "This is the initialize method."
    puts "It is called by <className>.new"
    puts
    @argn = argn    #This is an instance variable. It is specific to each declaration of the class.
  end

  def self.classMethod
    puts "This is a class method."
    puts "It can be called without declaring an instance of the class."
    puts
  end

  def instanceMethod
    puts "This in an instance method."
    puts "It can only be called on a specific instance of the class."
    puts
  end

  def show
    puts "This is the instance method 'show'."
    puts "It references an instance variable."
    puts "@argn = #{@argn}"
    puts
  end
end

DemoClass.classMethod

demoInstance = DemoClass.new(7)
demoInstance.instanceMethod
demoInstance.show

demoInstance2 = DemoClass.new(9)
demoInstance2.instanceMethod
demoInstance2.show
