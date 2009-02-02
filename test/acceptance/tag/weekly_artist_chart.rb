require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Weekly artist chart for tag 'Disco'" do
  
  before(:all) do #We only want to hit the webservice once.
    @group = Scrobbler2::Tag.new "Disco"
    @chart = @group.weekly_artist_chart
  end 
  
  it "should be hash" do
    @chart.should be_kind_of Hash
  end
  
  it "should have tag 'Disco'" do
    @chart["tag"].should == "Disco"
  end
  
  it "should have from" do
    @chart.should have_key("from")
  end
  
  it "should have to" do
    @chart.should have_key("to")
  end

  it "should have a list of artists" do
    @chart.should have_key('artist')
    @chart['artist'].should be_kind_of(Array)
  end
  
  describe "artist" do
    before(:each) do
      @artist = @chart['artist'][0]
    end
    
    it "should have name" do
      @artist.should have_key 'name'
    end
    
    it "should have mbid" do
      @artist.should have_key 'mbid'
    end
    
    it "should have weight" do
      @artist.should have_key 'weight'
    end

    it "should have url" do
      @artist.should have_key 'url'
    end
  
  end
  
end
