#!/usr/bin/env ruby

def main
  n = gets.to_i

  ans = n >= -2 ** 31 && n < 2 ** 31 ? 'Yes' : 'No'
  puts ans
end

main
