puts "  ~Yield demo:"

def yield_demo
  puts "This is the yield_demo"
  yield   #This calls whatever code was is in the block
  puts "Middle of the yield_demo"
  yield
  puts "End of the yield_demo"
end

yield_demo { puts "This is the yield" }
puts

yield_demo { puts "false" if false }
puts

yield_demo {puts "True" if true}
puts

#Compiler error!
# yield_demo
# puts


puts "  ~Yield if block_given? demo:"

def yield_if_demo
  puts "This is the yield_demo"
  yield if block_given?  #This calls whatever code was is in the block, but only if it's there
  puts "Middle of the yield_demo"
  yield if block_given?
  puts "End of the yield_demo"
end

yield_if_demo { puts "This is the yield if" }
puts

yield_if_demo
puts
