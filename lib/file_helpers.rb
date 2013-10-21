
# look for tools to read word docs 

# use rtf for now


#module FileHelpers

print "*** FOO  ***"


  class DocumentHelper

    def initialize(path)
      @path = path


      # *** check file types (here??) 

      @file_contents = {} 

      File.open(path, 'r') {|file|
        p file
        file.readlines.each{|line|
          
          next if line =~ /^{/
          next if line =~ /par/
          next if line =~ /^[\\}]/
          line.strip!
          
          line.split.each{|word|
            word.downcase!
            @file_contents[word] = 1
          }
        }
        
      }
    end



    def word_array
      @file_contents
    end


  end
