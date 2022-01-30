#!/usr/bin/env ruby

def main
  n = gets.to_i
  s = gets.chomp
  a = [0]
  l = []
  r = []

  for i in 0...n
    if s[i] == 'L'
      r.unshift(i)
    else
      l.push(i)
    end
  end

  puts "#{l.join(' ')} #{n} #{r.join(' ')}".strip
end

main
