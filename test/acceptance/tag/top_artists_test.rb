require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Top Artists for tag 'Disco'" do
  
  before(:all) do #We only want to hit the webservice once.
    @tag = Scrobbler2::Tag.new "Disco"
    @artists = @tag.top_artists
  end 
  
  it { @artists.should be_kind_of Hash }
  
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
    
    it_should_behave_like "Artist"
    it { @artist.should have_key 'tagcount' }
  
  end
  
end
