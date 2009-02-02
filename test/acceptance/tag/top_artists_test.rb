require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Top Artists for tag 'Disco '" do
  
  before(:all) do #We only want to hit the webservice once.
    @tag = Scrobbler2::Tag.new "Disco"
    @artists = @tag.top_artists
  end 
  
  it "should be hash" do
    @artists.should be_kind_of Hash
  end
  
  it "should have tag 'Disco'" do
    @artists["tag"].should == "Disco"
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
    
    it "should have tagcount" do
      @artist.should have_key 'tagcount'
    end

    it "should have url" do
      @artist.should have_key 'url'
    end
  
  end
  
end
