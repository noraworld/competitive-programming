#!/usr/bin/env ruby
# frozen_string_literal: true

def main
  n = gets.to_i
  digits = n.to_s.length

  ans = 0
  digits.times do |i|
    # 9 * (9 + 1) / 2
    # 90 * (90 + 1) / 2
    # 900 * (900 + 1) / 2
    # ...

    max_value = if i + 1 == digits
      n - (10 ** (digits - 1) - 1)
    else
      9 * (10 ** i)
    end

    ans += max_value * (max_value + 1) / 2
  end

  puts ans % 998244353
end

main

# 1: 1
# 2: 2
# 3: 3
# ...
# 10: 1
# 11: 2
# 12: 3
# ...
# 20: 11
# 21: 12
# 22: 13
# ...
# 90: 81
# 91: 82
# ...
# 99: 90
# 100: 1
