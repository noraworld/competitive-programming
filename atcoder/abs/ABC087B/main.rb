#!/usr/bin/env ruby
# frozen_string_literal: true

def main
  five_hundred_yen_coin_count = gets.to_i
  one_hundred_yen_coin_count  = gets.to_i
  fifty_yen_coin_count        = gets.to_i
  total                       = gets.to_i

  total_candidates = []
  (five_hundred_yen_coin_count + 1).times do |i|
    (one_hundred_yen_coin_count + 1).times do |j|
      (fifty_yen_coin_count + 1).times do |k|
        total_candidates.push(i * 500 + j * 100 + k * 50)
      end
    end
  end

  puts total_candidates.count(total)
end

main
