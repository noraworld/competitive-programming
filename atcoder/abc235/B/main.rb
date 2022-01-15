#!/usr/bin/env ruby
# frozen_string_literal: true

def main
  num = gets.to_i
  stands = gets.split(' ').map(&:to_i)

  current_position = stands.first
  num.times do |i|
    if stands[i + 1] && stands[i] < stands[i + 1]
      current_position = stands[i + 1]
    else
      break
    end
  end

  puts current_position
end

main
