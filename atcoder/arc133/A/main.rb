#!/usr/bin/env ruby
# frozen_string_literal: true

def main
  num = gets.to_i
  arr = gets.split(' ').map(&:to_i)

  done = []
  arr.each_with_index do |a, index|
    next if done.include?(a)
    done << a

    result = arr.filter { |x| x != a }

    if result.empty?
      puts ''
      return
    end

    if result[index].nil? || result[index] < a
      puts result.join(' ')
      return
    end
  end
end

main
