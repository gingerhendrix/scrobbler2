require File.dirname(__FILE__) + '/../test_helper.rb'

describe "events for user ..." do
  
  before(:all) do #We only want to hit the webservice once.
    @user = Scrobbler2::user.new "..."
    @events = @user.events
  end 
  
  it "should be hash" do
    @events.should be_kind_of Hash
  end
  
end
