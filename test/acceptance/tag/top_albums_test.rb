require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Top Albums for tag Disco" do

  before(:all) do #We only want to hit the webservice once.
    @tag = Scrobbler2::Tag.new "Disco"
    @albums = @tag.top_albums
    #puts "Top Albums: \n\n #{@albums.inspect} \n\n"
  end 

  
  it "should be a Hash" do
    @albums.should be_kind_of(Hash)
  end
  
  it "should have tag 'Disco'" do
    @albums["tag"].should == 'Disco'
  end
  
  it "should contain an array of albums" do
    @albums["album"].should be_kind_of(Array)
  end
  
  describe "Album" do
  
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
    
    it "should have tagcount" do
      @album.should have_key 'tagcount'
    end
    
    it "should have url" do
      @album.should have_key 'url'
    end
  
  end
end
