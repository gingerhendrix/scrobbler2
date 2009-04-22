require File.dirname(__FILE__) + '/../test_helper.rb'

describe "top_tracks for user gingerhendrix" do
  
  before(:all) do #We only want to hit the webservice once.
    @user = Scrobbler2::User.new "gingerhendrix"
    @top_tracks = @user.top_tracks
  end 
  
  it "should be hash" do
    @top_tracks.should be_kind_of Hash
  end
  
end
