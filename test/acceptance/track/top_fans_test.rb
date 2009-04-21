require File.dirname(__FILE__) + '/../test_helper.rb'

describe "top_fans for track Metallica - Blackened" do
  
  before(:all) do #We only want to hit the webservice once.
    @track = Scrobbler2::Track.new "Metallic", "Blackened"
    @fans = @track.top_fans
  end 
  
  it "should be hash" do
    @fans.should be_kind_of Hash
  end
  
  it "should have artist" do
   @fans.should have_key('artist')
  end
  
  it "should have track" do
   @fans.should have_key('track')
  end
  
  it_should_behave_like "Top Fans"
end
