require 'spec_helper'

describe Spelling do
  before :all do
    @spell = Spelling.new
  end
  describe "#new" do
    it "takes no args" do
      @spell.should be_an_instance_of Spelling
    end
  end
  
end


