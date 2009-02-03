require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Albums for library 'gingerhendrix'" do
  
  before(:all) do #We only want to hit the webservice once.
    @library = Scrobbler2::Library.new 'gingerhendrix'
    @it = @library.albums
  end 
  
  it { @it.should be_kind_of Hash } 

  it_should_behave_like "PagedResult"
    
  it "should have user 'gingerhendrix'" do
    @it["user"].should == "gingerhendrix"
  end
  
  it "should have a list of albums" do
    @it.should have_key('album')
    @it['album'].should be_kind_of(Array)
  end
  
  describe "Album" do
    before(:each) do
      @album = @it['album'][0]
    end
    
    it_should_behave_like "Album"

    it { @album.should have_key 'playcount' }
  
  end
  
end
