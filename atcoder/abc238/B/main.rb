#!/usr/bin/env ruby
# frozen_string_literal: true

def main
  n = gets.to_i
  a = gets.split.map(&:to_i)

  pizza = []
  pizza[0] = 0
  angle_sum = 0
  a.each do |angle|
    angle_sum += angle
    angle_sum -= 360 if angle_sum > 360
    pizza[angle_sum] = angle_sum
  end

  pizza = pizza.compact + [360]

  result = 0
  0.upto(pizza.length - 2) do |i|
    result = pizza[i + 1] - pizza[i] if (pizza[i + 1] - pizza[i]) > result
  end

  puts result
end

main

# [360                  ]
# [ 90, 270             ]
# [ 90, 180,  90        ]
# [ 90, 180,  45, 45    ]
# [ 90,  60, 120, 45, 45]

# [90]
# [90, 180]
# [90, 180, 225]
# [90, 180, 225, 60]
