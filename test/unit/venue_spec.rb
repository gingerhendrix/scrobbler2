require File.dirname(__FILE__) + "/spec_helper.rb"

describe "Venue" do
  before(:each) do
    @venue = Scrobbler2::Venue.new "8929268"
    @venue.class.stub!(:get).and_return Hash.new
  end
  
  it "should have a default query {:venue => id}" do
    @venue.instance_variable_get(:@query).should == {:venue => "8929268"}  
  end
  
  
  
  it "events should call get with 'venue.getevents'" do
    @venue.class.should_receive(:get).with('venue.getevents', anything(), anything()).and_return Hash.new
    @venue.events
  end
  
  
  
  it "past_events should call get with 'venue.getpastevents'" do
    @venue.class.should_receive(:get).with('venue.getpastevents', anything(), anything()).and_return Hash.new
    @venue.past_events
  end
  
  

end
