require File.dirname(__FILE__) + '/../test_helper.rb'

describe "friends for user gingerhendrix" do
  
  before(:all) do #We only want to hit the webservice once.
    @user = Scrobbler2::User.new "gingerhendrix"
    @friends = @user.friends
  end 
  
  it "should be hash" do
    @friends.should be_kind_of Hash
  end
  
end
