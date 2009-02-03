
describe "Track", :shared => true do
        
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

    it "should have url" do
      @track.should have_key 'url'
    end
end
