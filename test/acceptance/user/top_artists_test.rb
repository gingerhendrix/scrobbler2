require File.dirname(__FILE__) + '/../test_helper.rb'

describe "top_artists for user ..." do
  
  before(:all) do #We only want to hit the webservice once.
    @user = Scrobbler2::user.new "..."
    @top_artists = @user.top_artists
  end 
  
  it "should be hash" do
    @top_artists.should be_kind_of Hash
  end
  
end
