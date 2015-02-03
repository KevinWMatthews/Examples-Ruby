#!/usr/bin/ruby

# gsub
# and regular expressions

# To search for a pattern, use /pattern/
text = "Find the pattern in this text!"

# The =~ perator is used to match a string (text) with a regular expression (/pattern/)
if ( text =~ /pattern/ )
  puts "pattern was found!"
end

puts "___"
puts "Basic regex"
# In more detail, =~ returns the starting location of the pattern in the string
puts text =~ /pattern/
puts text =~ /Find/
puts text =~ /!/
puts text =~ /nope/ #returns nil

puts "___"
puts "Custom delimiters"
# %r can be used to create the delimiter of your choice
# useful when there are a lot of filenames using /
puts text =~ %r|pattern|
puts text =~ %r~pattern~
puts text =~ %r!pattern!

# Regular expressions can be used with modifiers:
# i  ignore case
## o  perform #{} interpolations only once
## x  ignore whitespace and allow comments
## m  match multiple lines, treating newlines as regular characters
## u,e,s,n  Interpret the regex as Unicode, EUC, SJIS, or ASCII

puts "___"
puts "Modifiers"
puts text =~ /PATTERN/i
puts text =~ /fInD/
puts text =~ /fInD/i

#There are a TON other patterns.
#For example,
# []  find the first match any single character within the brackets
puts "___"
puts "/[]/"
puts text =~ /[x]/
puts text =~ /[xz]/
puts text =~ /[t]/
puts text =~ /[Fi]/
puts text =~ /[fi]/

puts "___"
puts "gsub"
#sub and gsub are used to search for and replace a regex.
#sub replaces the first match while gsub replaces all matches
puts text.gsub /pattern/, "PATTERN"
puts text.gsub /!/, "."
