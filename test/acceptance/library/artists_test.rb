require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Artists for library 'gingerhendrix'" do
  
  before(:all) do #We only want to hit the webservice once.
    @library = Scrobbler2::Library.new 'gingerhendrix'
    @it = @library.artists
  end 
  
  it { @it.should be_kind_of Hash }
  
  it "should have user 'gingerhendrix'" do
    @it["user"].should == "gingerhendrix"
  end
  
  it_should_behave_like "PagedResult"

  it "should have a list of artists" do
    @it.should have_key('artist')
    @it['artist'].should be_kind_of(Array)
  end
  
  describe "artist" do
    before(:each) do
      @artist = @it['artist'][0]
    end
    
    it_should_behave_like "Artist"
    it { @artist.should have_key 'playcount' }
  
  end
  
end
