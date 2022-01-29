#!/usr/bin/env ruby

def main
  n, l, w = gets.split.map(&:to_i)
  a = gets.split.map(&:to_i)

  count = 0
  a.unshift(0)
  a.push(l)
  a.each_with_index do |_, i|
    next if i.zero?

    diff = a[i] - a[i - 1]
    puts "a[#{i}] = #{a[i]}, a[#{i - 1}] = #{a[i - 1]}, diff = #{diff}"
    if diff > w
      count += (diff.to_f / w.to_f).ceil
      puts "count = #{(diff.to_f / w.to_f).ceil}"
    end
  end

  puts "result is #{count}"
end

main
