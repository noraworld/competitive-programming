#!/usr/bin/env ruby
# frozen_string_literal: true

def main
  n = gets.to_i
  m = gets.to_i
  c = gets.split(' ')

  passed = []
  (1..n).map(&:to_s).filter do |i|
    passed << i.to_i if c.all? { |cc| i.include?(cc) }
  end

  puts passed.sum
end

main
