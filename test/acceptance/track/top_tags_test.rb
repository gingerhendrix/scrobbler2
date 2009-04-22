require File.dirname(__FILE__) + '/../test_helper.rb'

describe "top_tags for track Metallica - Blackened" do
  
  before(:all) do #We only want to hit the webservice once.
    @track = Scrobbler2::Track.new "Metallica", "Blackened"
    @tags = @track.top_tags
  end 
  
  it "should be hash" do
    @tags.should be_kind_of Hash
  end
  
  it "should have artist" do
   @tags.should have_key('artist')
  end
  
  it "should have track" do
   @tags.should have_key('track')
  end
  
  it_should_behave_like "Top Tags" 
  
end
