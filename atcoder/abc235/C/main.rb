#!/usr/bin/env ruby
# frozen_string_literal: true

def main
  array_num, query_num = gets.split(' ').map(&:to_i)
  array = gets.split(' ').map(&:to_i)

  query_num.times do
    x, k = gets.split(' ').map(&:to_i)

    if array.index(x).nil? || array.count(x) < k
      puts -1
      next
    end

    puts array.find_indexes(x)[k - 1] + 1

    # array.each_with_index do |_, i|
    #   if array[i] == x
    #     k = k - 1

    #     if k.zero?
    #       puts i + 1
    #       break
    #     end
    #   end
    # end
  end
end

# https://qiita.com/QUANON/items/ca06f3068c87b3a21e18
class Array
  def find_indexes(val)
    filter_map.with_index { |element, i| i if element == val }
  end
end

main
