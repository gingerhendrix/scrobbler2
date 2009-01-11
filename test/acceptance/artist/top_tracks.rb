require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Top Tracks for Metallica" do
  
  before(:all) do #We only want to hit the webservice once.
    @artist = Scrobbler2::Artist.new "Metallica"
    @tracks = @artist.top_tracks
  end 
   it "should return a Hash" do
    @tracks.should be_kind_of(Hash)
  end
  
  it "should have artist Metallica" do
    @tracks['artist'].should == "Metallica"
  end
  
  it "should have array of tracks" do
    @tracks.should have_key('track')  
    @tracks['track'].should be_a_kind_of(Array)
    @tracks['track'].length.should > 0
  end
  
  describe "a track" do
  
    before(:each) do
      @track = @tracks['track'][0]
    end
    
    it "should have a url" do
      @track.should have_key('url')
    end  
    
    it "should have a name" do
      @track.should have_key('name')
    end
    
    it "should have a rank" do
      @track.should have_key('rank')
    end
    
    it "should have a playcount" do
      @track.should have_key('playcount')
    end


  end
end
