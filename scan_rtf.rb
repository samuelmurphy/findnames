#! /usr/bin/env ruby

require './lib/spelling.rb'
require './lib/file_helpers.rb'


dict = Spelling.new

p dict.find_match("applot")


filename = ARGV[0]

puts "Scanning #{filename}"

#note the regex to strip control lines is lame but may work for initial tests

document = DocumentHelper.new(filename)

doc_words = document.word_array


puts "=========="
puts
p doc_words
puts

doc_words.keys.each{|cword|

  # remove non alpha ascii (move to lib)

  word = cword.gsub(/[^A-Za-z]/, "")  

  puts "#{word}   \t\t #{dict.find_match(word)}"

}
