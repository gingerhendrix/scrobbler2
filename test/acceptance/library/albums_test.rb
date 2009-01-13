require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Albums for library 'gingerhendrix'" do
  
  before(:all) do #We only want to hit the webservice once.
    @library = Scrobbler2::Library.new 'gingerhendrix'
    @albums = @library.albums
  end 
  
  it "should be hash" do
    @albums.should be_kind_of Hash
  end
  
  it "should have user 'gingerhendrix'" do
    @albums["user"].should == "gingerhendrix"
  end
  
  it "should have page" do
    @albums.should have_key("page")
  end
  
  it "should have perPage" do
    @albums.should have_key("perPage")
  end
  
  it "should have totalPages" do
    @albums.should have_key("totalPages")
  end

  it "should have a list of albums" do
    @albums.should have_key('album')
    @albums['album'].should be_kind_of(Array)
  end
  
  describe "album" do
    before(:each) do
      @album = @albums['album'][0]
    end
    
    it "should have artist" do
      @album.should have_key 'artist'
      @album['artist'].should be_kind_of(Hash)
      @album['artist'].should have_key('mbid')
      @album['artist'].should have_key('name')
      @album['artist'].should have_key('url')            
    end
    
    it "should have name" do
      @album.should have_key 'name'
    end
    
    it "should have mbid" do
      @album.should have_key 'mbid'
    end
    
    it "should have playcount" do
      @album.should have_key 'playcount'
    end

    it "should have url" do
      @album.should have_key 'url'
    end
  
  end
  
end
