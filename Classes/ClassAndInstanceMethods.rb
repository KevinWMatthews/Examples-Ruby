=begin
  Class methods are called on the class in general
  and do not require a specific instance to be used.
  Instance methods operate on a specific instance of the class.
=end

class Demo    # First letter must be capitalized! This signals Ruby that the "class/module name is CONSTANT"
  def self.classHello
    puts "Hello Ruby! This is a class method."
  end

  class << self
    def classHello2
      puts "Hello Ruby! This is another class method."
    end
  end

  def instanceHello
    puts "Hello Ruby! This is an instance method."
  end
end

def Demo.classHello3
  puts "Hello Ruby! This is yet another instance method."
  puts "This was defined outside of the original class definition!!"
end

Demo.classHello
Demo.classHello2
Demo.classHello3

demo = Demo.new
demo.instanceHello
