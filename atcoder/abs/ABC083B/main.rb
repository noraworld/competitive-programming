#!/usr/bin/env ruby
# frozen_string_literal: true

def main
  n, a, b = gets.chomp.split(' ').map(&:to_i)

  total_sum = 0
  1.upto(n) do |i|
    digit_sum = i.to_s.chars.map(&:to_i).sum
    total_sum += i if digit_sum >= a && digit_sum <= b
  end

  puts total_sum
end

main
