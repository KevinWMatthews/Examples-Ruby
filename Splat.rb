#Ruby splat operator
#
#You can iterate over a variable number of arguments.

def function(argument1, argument2, *splat)
  puts argument1
  puts argument2
  #Is there a better way to detect an empty splat argument?
  if splat == []
    puts "empty splat!"
  else
    #Iterate over a variable number of arguments.
    splat.each { |splat_n| puts splat_n }
  end
end

function "first argument", "second argument", "splat1", "splat2", "splat3"
puts ""
function "First argument", "Second argument", "Splat1", "Splat2", "Splat3", "Splat4", "Splat5"
puts ""
function "First Argument", "Second Argument"
