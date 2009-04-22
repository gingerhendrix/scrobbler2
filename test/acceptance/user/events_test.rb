require File.dirname(__FILE__) + '/../test_helper.rb'

describe "events for user gingerhendrix" do
  
  before(:all) do #We only want to hit the webservice once.
    @user = Scrobbler2::User.new "gingerhendrix"
    @events = @user.events
  end 
  
  it "should be hash" do
    @events.should be_kind_of Hash
  end
  
  it "should have user" do
    @events.should have_key('user')
    @events['user'].should == "gingerhendrix"
  end
  
  it "should have a list of events" do
    @events.should have_key('event')
    @events['event'].should be_kind_of(Array)
  end
  
  

  
end
