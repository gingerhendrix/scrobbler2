require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Tracks for library 'gingerhendrix'" do
  
  before(:all) do #We only want to hit the webservice once.
    @library = Scrobbler2::Library.new 'gingerhendrix'
    @it = @library.tracks
  end 
  
  it "should be hash" do
    @it.should be_kind_of Hash
  end
  
  it "should have user 'gingerhendrix'" do
    @it["user"].should == "gingerhendrix"
  end
  
  it_should_behave_like "PagedResult"
  
  it "should have a list of tracks" do
    @it.should have_key('track')
    @it['track'].should be_kind_of(Array)
  end
  
  describe "track" do

    before(:each) { @track = @it['track'][0] }
    
    it { @track.should have_key 'playcount' }
  
  end
  
end
