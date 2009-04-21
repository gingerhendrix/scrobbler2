require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Top Fans for Metallica" do
  
  before(:all) do #We only want to hit the webservice once.
    @artist = Scrobbler2::Artist.new "Metallica"
    @fans = @artist.top_fans
  end 
   it "should return a Hash" do
    @fans.should be_kind_of(Hash)
  end
  
  it "should have artist Metallica" do
    @fans['artist'].should == "Metallica"
  end
  
  it_should_behave_like "Top Fans"
  
end
