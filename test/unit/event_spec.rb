require File.dirname(__FILE__) + "/spec_helper.rb"

describe "Event" do
  before(:each) do
    @event = Scrobbler2::Event.new "328799"
    @event.class.stub!(:get).and_return Hash.new
  end
  
  it "should have a default query {:event => '328799'}" do
    @event.instance_variable_get(:@query).should == {:event => "328799"}  
  end
  
  it "info should call get with 'event.getInfo' with query params :event => @event" do
    @event.class.should_receive(:get).with('event.getinfo', {:event => "328799"}, {}).and_return Hash.new
    @event.info
  end
  
  it "shouts should call get with 'event.getShouts' with query params :event => @event" do
    @event.class.should_receive(:get).with('event.getshouts', {:event => "328799"}, {}).and_return Hash.new
    @event.shouts
  end
  
end
