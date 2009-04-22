require File.dirname(__FILE__) + '/../test_helper.rb'

describe "weekly_album_chart for user ..." do
  
  before(:all) do #We only want to hit the webservice once.
    @user = Scrobbler2::user.new "..."
    @weekly_album_chart = @user.weekly_album_chart
  end 
  
  it "should be hash" do
    @weekly_album_chart.should be_kind_of Hash
  end
  
end
