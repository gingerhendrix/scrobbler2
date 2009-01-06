require File.dirname(__FILE__) + "/spec_helper.rb"

describe "Artist" do
  before(:each) do
    @artist = Scrobbler2::Artist.new "Metallica"
    @artist.class.stub!(:get).and_return Hash.new
  end
  
  it "info should call get with 'artist.getInfo' with query params :artist => @name" do
    @artist.class.should_receive(:get).with('artist.getinfo', {:artist => "Metallica"}, {}).and_return Hash.new
    @artist.info
  end
  

end
