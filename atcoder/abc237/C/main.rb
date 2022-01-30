#!/usr/bin/env ruby

def main
  s = gets.chomp
  n = s.length

  # TLE
  # if palindrome?(s, 0, 0, n)
  #   puts 'Yes'
  #   exit
  # end

  x = 0
  0.upto(n - 1) do |i|
    if s[i] == 'a'
      x += 1
    else
      break
    end
  end

  y = 0
  (n - 1).downto(0) do |i|
    if s[i] == 'a'
      y += 1
    else
      break
    end
  end

  # TLE
  # x = s.match(/^a+/).to_s.length # the number of heading "a"
  # y = s.match(/a+$/).to_s.length # the number of tailing "a"

  if x == n
    puts 'Yes'
  elsif x > y
    puts 'No'
  elsif palindrome?(s, x, y, n)
    puts 'Yes'
  else
    puts 'No'
  end
end

def palindrome?(word, x, y, n)
  # TLE
  # word = word.to_s
  # size = word.length / 2
  # return ( word[0..size] == word.reverse[0..size] )

  x.upto(n - y - 1) do |i|
    return false if word[i] != word[x + n - y - i - 1]
  end

  true
end

main
