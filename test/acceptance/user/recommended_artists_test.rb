require File.dirname(__FILE__) + '/../test_helper.rb'

describe "recommended_artists for user gingerhendrix" do
  
  before(:all) do #We only want to hit the webservice once.
    @user = Scrobbler2::User.new "gingerhendrix"
    @recommended_artists = @user.recommended_artists
  end 
  
  it "should be hash" do
    pending "Auth doesn't seem to be working" do
      @recommended_artists.should be_kind_of Hash
    end
  end
  
end
