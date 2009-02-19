require File.dirname(__FILE__) + "/spec_helper.rb"

describe "Artist" do
  before(:each) do
    @artist = Scrobbler2::Artist.new "Metallica"
    @artist.class.stub!(:get).and_return Hash.new
  end
  
  it "should have a default query {:artist => 'Metallica'}" do
    @artist.instance_variable_get(:@query).should == {:artist => 'Metallica'}  
  end
  
  it "info should call get with 'artist.getInfo' with query params :artist => @name" do
    @artist.class.should_receive(:get).with('artist.getinfo', {:artist => "Metallica"}, {}).and_return Hash.new
    @artist.info
  end
  
  it "similar should call get with 'artist.getSimilar' with query params :artist => @name" do
    @artist.class.should_receive(:get).with('artist.getsimilar', {:artist => "Metallica"}, {}).and_return Hash.new
    @artist.similar
  end
  
  it "top_albums should call get with 'artist.getTopAlbums' with query params :artist => @name" do
    @artist.class.should_receive(:get).with('artist.gettopalbums', {:artist => "Metallica"}, {}).and_return Hash.new
    @artist.top_albums
  end
  
  it "events should call get with 'artist.getEvents' with query params :artist => @name" do
    @artist.class.should_receive(:get).with('artist.getevents', {:artist => "Metallica"}, {}).and_return Hash.new
    @artist.events
  end

  it "shouts should call get with 'artist.getShouts' with query params :artist => @name" do
    @artist.class.should_receive(:get).with('artist.getshouts', {:artist => "Metallica"}, {}).and_return Hash.new
    @artist.shouts
  end
  
  it "top_fans should call get with 'artist.getTopFans' with query params :artist => @name" do
    @artist.class.should_receive(:get).with('artist.gettopfans', {:artist => "Metallica"}, {}).and_return Hash.new
    @artist.top_fans
  end
  
  it "top_tags should call get with 'artist.getTopTags' with query params :artist => @name" do
    @artist.class.should_receive(:get).with('artist.gettoptags', {:artist => "Metallica"}, {}).and_return Hash.new
    @artist.top_tags
  end
  
  it "top_tracks should call get with 'artist.getTopTrakcs' with query params :artist => @name" do
    @artist.class.should_receive(:get).with('artist.gettoptracks', {:artist => "Metallica"}, {}).and_return Hash.new
    @artist.top_tracks
  end
  
  it "tags should call get_with_auth with 'artist.getTags', and query params :artist => @name" do
    @artist.class.should_receive(:get_with_auth).with('artist.gettags', {:artist => "Metallica"}).and_return Hash.new :tags => []
    @artist.tags
  end
  
  it "add tags should post_with_auth with 'artist.addTags', and query params :artist => @name, :tags => 'test1, test2'" do
    @artist.class.should_receive(:post_with_auth).with('artist.addtags', {:artist => "Metallica", :tags => "test1,test2"}).and_return Hash.new
    @artist.add_tags ["test1", "test2"]
  end
end
