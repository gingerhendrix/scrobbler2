require File.dirname(__FILE__) + '/../test_helper.rb'

describe "playlists for user gingerhendrix" do
  
  before(:all) do #We only want to hit the webservice once.
    @user = Scrobbler2::User.new "gingerhendrix"
    @playlists = @user.playlists
  end 
  
  it "should be hash" do
    @playlists.should be_kind_of Hash
  end
  
end
