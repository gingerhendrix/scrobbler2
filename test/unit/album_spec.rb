require File.dirname(__FILE__) + "/spec_helper.rb"

describe "Album" do
  before(:each) do
    @album = Scrobbler2::Album.new "Metallica", "Ride The Lightning"
    @album.class.stub!(:get).and_return Hash.new
  end
  
  it "should have a default query {:artist => 'Metallica', :album => 'Ride The Lightning'}" do
    @album.instance_variable_get(:@query).should == {:artist => 'Metallica', :album => 'Ride The Lightning'}  
  end
  
  it "info should call get with 'album.getInfo' with query params :artist => @artist, :album => @album" do
    @album.class.should_receive(:get).with('album.getinfo', {:artist => "Metallica", :album => "Ride The Lightning"}, {}).and_return Hash.new
    @album.info
  end
end
