def inverse_unhandledException(x)
  1.0 / x
end

def inverse_handledException(x)
  raise ArgumentError, 'Argument is not numeric' unless x.is_a? Numeric
  1.0 / x
end


# puts inverse_unhandledException(2)
# puts inverse_unhandledException('text')
# puts

#Exceptions can provide a more clear error message
puts inverse_handledException(2)
puts inverse_handledException('text')
puts
