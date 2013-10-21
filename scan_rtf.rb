#! /usr/bin/env ruby

require './lib/spelling.rb'

dict = Spelling.new

p dict.find_match("applot")


filename = ARGV[0]

puts "Scanning #{filename}"

#note the regex to strip control lines is lame but may work for initial tests

doc_words = {}

File.open(filename, 'r') {|file|
  
  file.readlines.each{|line|
 
    next if line =~ /^{/
    next if line =~ /par/
    next if line =~ /^[\\}]/
    line.strip!

    line.split.each{|word|
      word.downcase!
      doc_words[word] = 1
    }
  }

}

puts "=========="
puts
p doc_words
puts

doc_words.keys.each{|word|

  # remove non alpha ascii (move to lib)

  a.gsub!)/[^A-Za-z]/, "")  

  puts "#{word}   \t\t #{dict.find_match(word)}"

}
