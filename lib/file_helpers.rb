
# look for tools to read word docs 

# use rtf for now


#module FileHelpers


  class DocumentHelper

    def initialize(path)
      @path = path


      # *** check file types (here??) 

      @capital_words = {}
      @file_contents = {} 

      File.open(path, 'r') {|file|
        p file
        file.readlines.each{|line|
          
          # UNGLY hack to clean up rtf
          next if line =~ /^{/
          next if line =~ /par/
          next if line =~ /^[\\}]/
          line.strip!
          
          line.split.each{|word|
            @capital_words[word] = @capital_words.key?(word) ? @capital_words[word] += 1 : 1 if(word == word.capitalize)
            word.downcase!
            @file_contents[word] = @file_contents.key?(word) ? @file_contents[word] += 1 : 1
          }
        }
        
      }
    end

    def capital_words
      @capital_words
    end

    def word_array
      @file_contents
    end


  end
