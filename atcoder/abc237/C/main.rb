#!/usr/bin/env ruby

def main
  s = gets.chomp

  if palindrome?(s)
    puts 'Yes'
    exit
  end

  trim_s = s.gsub(/a+$/, '')
  if palindrome?(trim_s)
    puts 'Yes'
    exit
  else
    puts 'No'
    exit
  end
end

def palindrome?(word)
  word = word.to_s
  size = word.length / 2
  return ( word[0..size] == word.reverse[0..size] )
end

main
