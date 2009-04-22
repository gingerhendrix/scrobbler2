require File.dirname(__FILE__) + '/../test_helper.rb'

describe "top_albums for user gingerhendrix" do
  
  before(:all) do #We only want to hit the webservice once.
    @user = Scrobbler2::User.new "gingerhendrix"
    @top_albums = @user.top_albums
  end 
  
  it "should be hash" do
    @top_albums.should be_kind_of Hash
  end
  
end
