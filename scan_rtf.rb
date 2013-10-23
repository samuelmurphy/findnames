#! /usr/bin/env ruby

require './lib/spelling.rb'
require './lib/file_helpers.rb'


dict = Spelling.new

p dict.find_match("applot")


filename = ARGV[0]

unless filename
  puts "\nRequired argument missing: filename of an rtf file required\n"
  exit
end

puts "Scanning #{filename}"

#note the regex to strip control lines is lame but may work for initial tests

document = DocumentHelper.new(filename)

doc_words = document.all_words_frequency_hash

puts "=========="
puts
p doc_words
puts

doc_words.keys.each{|cword|

  # remove non alpha ascii (move to lib)

  word = cword.gsub(/[^A-Za-z]/, "")  

  puts "#{word}   \t\t #{dict.find_match(word)}"

}

puts
puts

p document.capital_words
