#!/usr/bin/env ruby

a, b = gets.split(' ')
if (a.to_i * b.to_i).even?
  puts 'Even'
else
  puts 'Odd'
end
