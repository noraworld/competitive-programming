#!/usr/bin/env ruby

def main
  n = gets.to_i
  s = gets.chomp
  a = [0]

  pos = 0
  for i in 0...n
    pos += 1 if s[i] == 'R'
    a.insert(pos, i + 1)
  end

  puts a.join(' ')
end

main
