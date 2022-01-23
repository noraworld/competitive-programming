#!/usr/bin/env ruby
# frozen_string_literal: true

def main
  n = gets.to_i
  a = []
  i = 0
  while true
    data = gets
    break if data.nil?

    a[i] = data.split(' ').map(&:to_i)
    i += 1
  end


end

main
