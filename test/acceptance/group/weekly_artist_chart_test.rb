require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Weekly artist chart for group 'stubborn tiny lights'" do
  
  before(:all) do #We only want to hit the webservice once.
    @group = Scrobbler2::Group.new "stubborn tiny lights"
    @chart = @group.weekly_artist_chart
  end 
  
  it "should be hash" do
    @chart.should be_kind_of Hash
  end
  
  it "should have group 'stubborn tiny lights'" do
    @chart["group"].should == "stubborn tiny lights"
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
    
    it "should have playcount" do
      @artist.should have_key 'playcount'
    end

    it "should have url" do
      @artist.should have_key 'url'
    end
  
  end
  
end
