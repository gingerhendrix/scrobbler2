require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Weekly album chart for group 'stubborn tiny lights'" do
  
  before(:all) do #We only want to hit the webservice once.
    @group = Scrobbler2::Group.new "stubborn tiny lights"
    @chart = @group.weekly_album_chart
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

  it "should have a list of albums" do
    @chart.should have_key('album')
    @chart['album'].should be_kind_of(Array)
  end
  
  describe "album" do
    before(:each) do
      @album = @chart['album'][0]
    end
    
    it "should have artist" do
      @album.should have_key 'artist'
      @album['artist'].should be_kind_of(Hash)
      @album['artist'].should have_key('mbid')
      @album['artist'].should have_key('#text')      
    end
    
    it "should have name" do
      @album.should have_key 'name'
    end
    
    it "should have mbid" do
      @album.should have_key 'mbid'
    end
    
    it "should have playcount" do
      @album.should have_key 'playcount'
    end

    it "should have url" do
      @album.should have_key 'url'
    end
  
  end
  
end
