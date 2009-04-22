require File.dirname(__FILE__) + '/../test_helper.rb'

describe "loved_tracks for user ..." do
  
  before(:all) do #We only want to hit the webservice once.
    @user = Scrobbler2::user.new "..."
    @loved_tracks = @user.loved_tracks
  end 
  
  it "should be hash" do
    @loved_tracks.should be_kind_of Hash
  end
  
end
