require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Tracks for library 'gingerhendrix'" do
  
  before(:all) do #We only want to hit the webservice once.
    @library = Scrobbler2::Library.new 'gingerhendrix'
    @tracks = @library.tracks
  end 
  
  it "should be hash" do
    @tracks.should be_kind_of Hash
  end
  
  it "should have user 'gingerhendrix'" do
    @tracks["user"].should == "gingerhendrix"
  end
  
  it "should have page" do
    @tracks.should have_key("page")
  end
  
  it "should have perPage" do
    @tracks.should have_key("perPage")
  end
  
  it "should have totalPages" do
    @tracks.should have_key("totalPages")
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
    
    it "should have playcount" do
      @track.should have_key 'playcount'
    end

    it "should have url" do
      @track.should have_key 'url'
    end
  
  end
  
end
