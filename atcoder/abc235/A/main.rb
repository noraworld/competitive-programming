#!/usr/bin/env ruby
# frozen_string_literal: true

def main
  input = gets.to_i
  a = input / 100
  b = (input % 100) / 10
  c = (input % 100) % 10

  puts "#{a}#{b}#{c}".to_i + "#{b}#{c}#{a}".to_i + "#{c}#{a}#{b}".to_i
end

main
