def raise_exception
  puts 'Before an exception is raised'
  raise 'Raising an exception'
  puts 'After the exception was raised'
  puts 'Notice that the program flow was terminated'
end
raise_exception
