#!/usr/bin/env ruby

require 'pp'

# (c) Su Nam Kim 2012
# what to do : compute Fibonacci number with given input
# how to run : ruby fibonacci.rb
# what to see : the accumulcated fibonacci number. e.g. with given input 5, the output is 5 from 0 + 1 + 4

class Fibonacci
  def getinput()
    puts "Type the maximum number to stop the process => "
    tmp = gets.chomp()
    num = tmp.to_i
  end

  attr_reader :num

  def fib(num)
    if(num == 0)
      return 0
    elsif(num == 1)
      return 1
    else
      return fib(num-1) + fib(num-2)
    end
  end
end

myfib = Fibonacci.new()
curnum = myfib.getinput()
puts "Input is #{curnum}"

myoutput = myfib.fib(curnum)
puts "The result is #{myoutput}"

