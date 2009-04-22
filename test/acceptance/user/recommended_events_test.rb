require File.dirname(__FILE__) + '/../test_helper.rb'

describe "recommended_events for user ..." do
  
  before(:all) do #We only want to hit the webservice once.
    @user = Scrobbler2::user.new "..."
    @recommended_events = @user.recommended_events
  end 
  
  it "should be hash" do
    @recommended_events.should be_kind_of Hash
  end
  
end
