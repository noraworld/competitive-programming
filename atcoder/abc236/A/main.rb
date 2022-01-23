#!/usr/bin/env ruby
# frozen_string_literal: true

def main
  s = gets
  a, b = gets.split(' ').map(&:to_i)

  s[a - 1], s[b - 1] = s[b - 1], s[a - 1]
  puts s
end

main
