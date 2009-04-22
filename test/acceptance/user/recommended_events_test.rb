require File.dirname(__FILE__) + '/../test_helper.rb'

describe "recommended_events for user gingerhendrix" do
  
  before(:all) do #We only want to hit the webservice once.
    @user = Scrobbler2::User.new "gingerhendrix"
    @recommended_events = @user.recommended_events
  end 
  
  it "should be hash" do
    pending "auth doesn't seem to be working" do
      @recommended_events.should be_kind_of Hash
    end
  end
  
end
