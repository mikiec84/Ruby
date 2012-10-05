#!/usr/bin/env ruby

require 'pp'

def LevenshteinDistance(s, t)
  len_s = s.length
  len_t = t.length
  cost = 0

  puts "current string and length are #{s}:#{len_s} and #{t}:#{len_t}";

  if(s[0] != t[0])
    cost = 1
  end

  if(len_s == 0)
    return len_t
  elsif(len_t == 0)
    return len_s
  else
    return [LevenshteinDistance(s[1..len_s], t) + 1, LevenshteinDistance(s, t[1..len_t]) + 1, LevenshteinDistance(s[1..len_s], t[1..len_t]) + cost].min
  end # for if-else satement
end # for function

s, t = ARGV

cost = LevenshteinDistance(s, t)

puts "The cost of difference between two strings, #{s} and #{t} are #{cost}"

