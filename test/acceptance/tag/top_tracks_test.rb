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
    
    it_should_behave_like "Track"
    it { @track.should have_key 'tagcount' }
  
  end
  
end
