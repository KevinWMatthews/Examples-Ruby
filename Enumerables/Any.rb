puts (0..10).any? { |n| n%2 == 0 }
puts (0..10).any? { |n| n%2 > 10 }
puts
puts !((0..10).any? { |n| n%2 == 0 })
puts !((0..10).any? { |n| n%2 > 10 })

