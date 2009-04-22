require File.dirname(__FILE__) + '/../test_helper.rb'

describe "playlists for user ..." do
  
  before(:all) do #We only want to hit the webservice once.
    @user = Scrobbler2::user.new "..."
    @playlists = @user.playlists
  end 
  
  it "should be hash" do
    @playlists.should be_kind_of Hash
  end
  
end
