
describe "Album", :shared => true do
    it "should have name" do
      @album.should have_key 'name'
    end
    
    it "should have mbid" do
      @album.should have_key 'mbid'
    end
    
    it "should have url" do
      @album.should have_key 'url'
    end
    
    it "should have artist" do
      @album.should have_key 'artist'
      @album['artist'].should be_kind_of(Hash)
      @album['artist'].should have_key('mbid')
      @album['artist'].should have_key('name')
      @album['artist'].should have_key('url')            
    end
end


describe "Album with simple artist and title", :shared => true do
    it "should have title" do
      @album.should have_key 'title'
    end
    
    it "should have mbid" do
      @album.should have_key 'mbid'
    end
    
    it "should have url" do
      @album.should have_key 'url'
    end
    
    it "should have artist" do
      @album.should have_key 'artist'
    end
end
