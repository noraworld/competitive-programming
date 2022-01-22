#!/usr/bin/env ruby
# frozen_string_literal: true

def main
  num = gets.to_i
  arr = gets.split(' ').map(&:to_i)

  delete_element = arr.last
  arr.each_with_index do |a, index|
    break if arr[index + 1].nil?

    if arr[index] > arr[index + 1]
      delete_element = arr[index]
      break
    end
  end

  puts arr.filter { |x| x != delete_element }.join(' ')
end

main
