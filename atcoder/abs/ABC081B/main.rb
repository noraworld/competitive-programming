#!/usr/bin/env ruby
# frozen_string_literal: true

def main
  integers = readlines.last.split(' ').map(&:to_i)
  count = half_count(integers, 0)
  puts count
end

def half_count(integers, count)
  if integers.all?(&:even?)
    half_count(integers.map { |v| v / 2 }, count + 1)
  else
    count
  end
end

main
