require File.dirname(__FILE__) + "/spec_helper.rb"

describe "Track" do
  before(:each) do
    @track = Scrobbler2::Track.new "Metallica", "Blackened"
    @track.class.stub!(:get).and_return Hash.new
  end
  
  it "should have a default query {:artist => 'Metallica', :track => 'Blackened'}" do
    @track.instance_variable_get(:@query).should == {:artist => 'Metallica', :track => 'Blackened'}  
  end
  
  it "info should call get with 'track.getInfo' with query params :artist => @artist, :track => @album" do
    @track.class.should_receive(:get).with('track.getinfo', {:artist => "Metallica", :track => "Blackened"}, {}).and_return Hash.new
    @track.info
  end
  
  it "similar should call get with 'track.getSimilar' with query params :artist => @artist, :track => @album" do
    @track.class.should_receive(:get).with('track.getsimilar', {:artist => "Metallica", :track => "Blackened"}, {}).and_return Hash.new
    @track.similar
  end
  
 it "top_fans should call get with 'track.getTopFans' with query params :artist => @artist, :track => @album" do
    @track.class.should_receive(:get).with('track.gettopfans', {:artist => "Metallica", :track => "Blackened"}, {}).and_return Hash.new
    @track.top_fans
  end

end
