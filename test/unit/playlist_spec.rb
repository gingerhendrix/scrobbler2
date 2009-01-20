require File.dirname(__FILE__) + "/spec_helper.rb"

describe "Playlist" do
  before(:each) do
    @playlist = Scrobbler2::Playlist.new "lastfm://playlist/album/2026126"
    @playlist.class.stub!(:get).and_return Hash.new
  end
  
  it "should have a default query {:playlistURL => 'lastfm://playlist/album/2026126'}" do
    @playlist.instance_variable_get(:@query).should == {:playlistURL => 'lastfm://playlist/album/2026126'}
  end
  
  it "fetch should call get with 'playlist.fetch' with query params :playlistURL => @url" do
    @playlist.class.should_receive(:get).with('playlist.fetch', {:playlistURL => 'lastfm://playlist/album/2026126'}, {}).and_return Hash.new
    @playlist.fetch
  end

end
