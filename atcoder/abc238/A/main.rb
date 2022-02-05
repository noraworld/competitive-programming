#!/usr/bin/env ruby
# frozen_string_literal: true

def main
  n = gets.to_i

  if n > 1000
    ans = 'Yes'
  elsif 2 ** n > n * n
    ans = 'Yes'
  else
    ans = 'No'
  end

  puts ans
end

main
