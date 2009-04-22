require File.dirname(__FILE__) + '/../test_helper.rb'

describe "weekly_track_chart for user gingerhendrix" do
  
  before(:all) do #We only want to hit the webservice once.
    @user = Scrobbler2::User.new "gingerhendrix"
    @weekly_track_chart = @user.weekly_track_chart
  end 
  
  it "should be hash" do
    @weekly_track_chart.should be_kind_of Hash
  end
  
end
