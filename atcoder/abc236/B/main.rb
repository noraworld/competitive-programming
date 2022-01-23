#!/usr/bin/env ruby
# frozen_string_literal: true

def main
  n = gets.to_i
  a = gets.split(' ').map(&:to_i)

  b = []
  a.each do |aa|
    next if !b[aa].nil? && b[aa] == 4

    b[aa] = b[aa].nil? ? 1 : b[aa] + 1
  end

  puts b.index(3)
end

main
