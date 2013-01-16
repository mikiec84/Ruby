#!/usr/bin/env ruby

require 'pp'


metric = [ [0, 0], [0, 1], [1, 0], [1, 1]]


metric.each do |array_element|
  p array_element
end

s = "abc"
t = ""
t = t+s[1..2]
puts "value is #{t}"

s.each_char { |i|
  puts i
}

s = "This is my string."
s2 = "This is my string."

puts s.eql?(s2)

