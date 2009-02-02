require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Tracks for tag 'Disco'" do
  
  before(:all) do #We only want to hit the webservice once.
    @tag = Scrobbler2::Tag.new "Disco"
    @tracks = @tag.top_tracks
  end 
  
  it "should be hash" do
    @tracks.should be_kind_of Hash
  end
  
  it "should have tag 'Disco'" do
    @tracks["tag"].should == "Disco"
  end
  
  it "should have a list of tracks" do
    @tracks.should have_key('track')
    @tracks['track'].should be_kind_of(Array)
  end
  
  describe "track" do
    before(:each) do
      @track = @tracks['track'][0]
    end
        
    it "should have artist" do
      @track.should have_key 'artist'
      @track['artist'].should be_kind_of(Hash)
      @track['artist'].should have_key('mbid')
      @track['artist'].should have_key('name')
      @track['artist'].should have_key('url')            
    end
    
    it "should have name" do
      @track.should have_key 'name'
    end
    
    it "should have mbid" do
      @track.should have_key 'mbid'
    end
    
    it "should have tagcount" do
      @track.should have_key 'tagcount'
    end

    it "should have url" do
      @track.should have_key 'url'
    end
  
  end
  
end
