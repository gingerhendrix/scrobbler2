require File.dirname(__FILE__) + '/../test_helper.rb'

describe "recent_tracks for user 'gingerhendrix'" do
  
  before(:all) do #We only want to hit the webservice once.
    @user = Scrobbler2::User.new "gingerhendrix"
    @recent_tracks = @user.recent_tracks
  end 
  
  it "should be hash" do
    @recent_tracks.should be_kind_of Hash
  end
  
end
