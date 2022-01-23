#!/usr/bin/env ruby
# frozen_string_literal: true

def main
  n, m = gets.split(' ').map(&:to_i)
  s = gets.split(' ')
  t = gets.split(' ')

  while !s.empty? && !s.nil?
    if s.first == t.first
      puts 'Yes'
      s.shift
      t.shift
    else
      puts 'No'
      s.shift
    end
  end
end

main
