require File.dirname(__FILE__) + '/../test_helper.rb'

describe "recommended_artists for user ..." do
  
  before(:all) do #We only want to hit the webservice once.
    @user = Scrobbler2::user.new "..."
    @recommended_artists = @user.recommended_artists
  end 
  
  it "should be hash" do
    @recommended_artists.should be_kind_of Hash
  end
  
end
