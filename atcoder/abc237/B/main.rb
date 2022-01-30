#!/usr/bin/env ruby

def main
  h, w = gets.split.map(&:to_i)
  a = []
  for i in 0...h
    a << gets.split.map(&:to_i)
  end

  a = a.transpose

  a.each do |b|
    puts b.join(' ')
  end
end

main
