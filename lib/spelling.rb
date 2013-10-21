
# hhhh
# load dict
# build a stem hash?  (research)
# test for common word - not a person name
#

class Spelling
  @dict = {}

  def initialize(*args)
    puts "in new"
    load_dict
  end

  def load_dict

    # TODO add some file system search and consolidate multiple dictionaries and custom dicts
    @dict = {}
    str = IO.read("dictionaries/english-words.95")
    str.split.each{|ll|
      ll.chomp!
      ll.downcase!

      @dict[ll] = 1
    }
    puts "lines #{@dict.length}"

  end

  def tlen
    puts @dict.length
  end

  def find_match(word)
    
    if @dict.key?(word)
      return true
    else
      return false
    end
  end

end

