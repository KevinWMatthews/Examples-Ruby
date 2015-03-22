def ArgumentErrorsDemo(n)
  begin
    puts "n: #{n}"
    if (n == 0)
      raise ArgumentError.new('n == 0')
    end
    if (n < 0)
      raise ArgumentError.new('n < 0')
    end
  end
  puts
end

ArgumentErrorsDemo(1)
# ArgumentErrorsDemo(0)
ArgumentErrorsDemo(-1)
