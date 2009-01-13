require File.dirname(__FILE__) + "/spec_helper.rb"

describe "Library" do
  before(:each) do
    @library = Scrobbler2::Library.new "gingerhendrix"
    @library.class.stub!(:get).and_return Hash.new
  end
  
  it "should have a default query {:user => 'gingerhendrix'}" do
    @library.instance_variable_get(:@query).should == {:user => 'gingerhendrix'}
  end
  
  it "tracks should call get with 'library.getTracks' with query params :user => @user" do
    @library.class.should_receive(:get).with('library.gettracks', {:user => 'gingerhendrix'}, {}).and_return Hash.new
    @library.tracks
  end

  it "artists should call get with 'library.getArtists' with query params :user => @user" do
    @library.class.should_receive(:get).with('library.getartists', {:user => 'gingerhendrix'}, {}).and_return Hash.new
    @library.artists
  end  
  
  it "tracks should call get with 'library.getTracks' with query params :user => @user" do
    @library.class.should_receive(:get).with('library.getalbums', {:user => 'gingerhendrix'}, {}).and_return Hash.new
    @library.albums
  end
end
