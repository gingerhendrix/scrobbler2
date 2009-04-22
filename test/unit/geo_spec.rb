require File.dirname(__FILE__) + "/spec_helper.rb"

describe "Geo" do
  before(:each) do
    @geo = Scrobbler2::Geo.new 
    @geo.class.stub!(:get).and_return Hash.new
  end
  
  it "should have no default query" do
    @geo.instance_variable_get(:@query).should == {}  
  end
  
  
  
  it "events should call get with 'geo.getevents'" do
    @geo.class.should_receive(:get).with('geo.getevents', anything(), anything()).and_return Hash.new
    @geo.events
  end
  
  
  
  it "top_artists should call get with 'geo.gettop_artists'" do
    @geo.class.should_receive(:get).with('geo.gettopartists', anything(), anything()).and_return Hash.new
    @geo.top_artists
  end
  
  
  
  it "top_tracks should call get with 'geo.gettop_tracks'" do
    @geo.class.should_receive(:get).with('geo.gettoptracks', anything(), anything()).and_return Hash.new
    @geo.top_tracks
  end
  
  

end
