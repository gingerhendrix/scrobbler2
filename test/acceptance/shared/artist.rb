
describe "Artist", :shared => true do

    it "should have name" do
      @artist.should have_key 'name'
    end
    
    it "should have mbid" do
      @artist.should have_key 'mbid'
    end

    it "should have url" do
      @artist.should have_key 'url'
    end

end
