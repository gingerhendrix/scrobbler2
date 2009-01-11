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
  

end
