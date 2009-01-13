require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Artists for library 'gingerhendrix'" do
  
  before(:all) do #We only want to hit the webservice once.
    @library = Scrobbler2::Library.new 'gingerhendrix'
    @artists = @library.artists
  end 
  
  it "should be hash" do
    @artists.should be_kind_of Hash
  end
  
  it "should have user 'gingerhendrix'" do
    @artists["user"].should == "gingerhendrix"
  end
  
  it "should have page" do
    @artists.should have_key("page")
  end
  
  it "should have perPage" do
    @artists.should have_key("perPage")
  end
  
  it "should have totalPages" do
    @artists.should have_key("totalPages")
  end

  it "should have a list of artists" do
    @artists.should have_key('artist')
    @artists['artist'].should be_kind_of(Array)
  end
  
  describe "artist" do
    before(:each) do
      @artist = @artists['artist'][0]
    end
    
    it "should have name" do
      @artist.should have_key 'name'
    end
    
    it "should have mbid" do
      @artist.should have_key 'mbid'
    end
    
    it "should have playcount" do
      @artist.should have_key 'playcount'
    end

    it "should have url" do
      @artist.should have_key 'url'
    end
  
  end
  
end
