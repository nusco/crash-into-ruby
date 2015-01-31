#!/usr/bin/ruby

query = ARGV[0]

dict = File.readlines 'dictionary.txt'

numpad = ('A'..'Z').each_slice(3).to_a

dict.each do |word|
  query.chars.each_with_index do |num, i|
    next if num == '1'
    num = num.to_i - 2
    chars = numpad[num]
    
    if !chars.include? word[i]
      break
    end
    if i == query.length - 1
      puts word
    end
  end
end