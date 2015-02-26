text = "Find the pattern in this text!"

searchterm = "pattern"
puts text.gsub /#{searchterm}/, "PATTERN"

searchterm = "t"
puts text.gsub /#{"#{searchterm}"*2}/, "TT"

searchterm = "pa"
puts text.gsub /"#{searchterm}"/, "PA"
