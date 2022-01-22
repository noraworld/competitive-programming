#!/usr/bin/env ruby
# frozen_string_literal: true

def main
  left, right, v = gets.split(' ').map(&:to_i)

  count = 0
  left.upto(right) do |l|
    l.upto(right) do |r|
      count += 1 if (l..r).inject(0) { |result, item| result ^ item } == v
    end
  end

  puts count % 998244353
end

main
