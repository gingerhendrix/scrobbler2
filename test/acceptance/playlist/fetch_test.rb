require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Playlist lastfm://playlist/album/2026126" do
  
  before(:all) do #We only want to hit the webservice once.
    @playlist = Scrobbler2::Playlist.new 'lastfm://playlist/album/2026126'
    @info = @playlist.fetch
  end 
  
  it "should be hash" do
    @info.should be_kind_of Hash
  end
  
  it "should have title 'Cher - Believe'" do
    @info["title"].should == "Cher - Believe"
  end
  
  it "should have creator" do
    @info.should have_key 'creator'
  end

  it "should have date" do
    @info.should have_key 'date'
  end
  
  it "should have trackList" do
    @info.should have_key 'trackList'
    @info['trackList'].should be_kind_of Hash
    @info['trackList'].should have_key 'track'
    @info['trackList']['track'].should be_kind_of Array
  end
  
  describe "track" do
    before(:each) do
      @track = @info['trackList']['track'][0]
    end
    
    it "should have title" do
      @track.should have_key 'title'
    end
    
    it "should have identifier" do
      @track.should have_key 'identifier'
    end

    it "should have album" do
      @track.should have_key 'album'
    end
    
    it "should have creator" do
      @track.should have_key 'creator'
    end

    it "should have duration" do
      @track.should have_key 'duration'
    end

    it "should have info" do
      @track.should have_key 'info'
    end

    it "should have image" do
      @track.should have_key 'image'
    end
  
  end
  
end
