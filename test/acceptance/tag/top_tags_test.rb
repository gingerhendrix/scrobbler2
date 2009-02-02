require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Top Tags for Metallica" do
  
  before(:all) do #We only want to hit the webservice once.
    @tag = Scrobbler2::Tag.new "Disco"
    @tags = @tag.top_tags
  end 
   it "should return a Hash" do
    @tags.should be_kind_of(Hash)
  end
      
  it "should have array of tags" do
    @tags.should have_key('tag')  
    @tags['tag'].should be_a_kind_of(Array)
    @tags['tag'].length.should > 0
  end
  
  describe "a tag" do
  
    before(:each) do
      @tag = @tags['tag'][0]
    end
    
    it "should have a url" do
      @tag.should have_key('url')
    end  
    
    it "should have a name" do
      @tag.should have_key('name')
    end
  end
end
