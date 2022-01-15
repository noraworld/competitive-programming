#!/usr/bin/env ruby
# frozen_string_literal: true

def main
  a, n = gets.split(' ').map(&:to_i)

  current = n
  until current == 1
    if (current % a).zero?
      current = current / a
      puts "a: #{current}"
    elsif current >= 10 && !(current % 10).zero?
      curent = (current.to_s[1..] + current.to_s[0]).to_i
      puts "b: #{current}"
    else
      puts -1
      break
    end
  end
end

main
