require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Top Tags for Metallica" do
  
  before(:all) do #We only want to hit the webservice once.
    @artist = Scrobbler2::Artist.new "Metallica"
    @tags = @artist.top_tags
  end 
   it "should return a Hash" do
    @tags.should be_kind_of(Hash)
  end
  
  it "should have artist Metallica" do
    @tags['artist'].should == "Metallica"
  end
    
  it_should_behave_like "Top Tags"
end
