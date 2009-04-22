require File.dirname(__FILE__) + '/../test_helper.rb'

describe "friends for user ..." do
  
  before(:all) do #We only want to hit the webservice once.
    @user = Scrobbler2::user.new "..."
    @friends = @user.friends
  end 
  
  it "should be hash" do
    @friends.should be_kind_of Hash
  end
  
end
