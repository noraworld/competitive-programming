#!/usr/bin/env ruby

def main
  n = gets.to_i
  s = gets

  # snwfpfwipeusiwkzo
  # effwpnwipsusiwkzo

  x = []
  s.each_with_index do |_, i|
    early_index = s.rindex(s.chars.min)

    x += [i, early_index] if early_index != i
  end
end

main
