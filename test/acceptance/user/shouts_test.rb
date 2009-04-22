require File.dirname(__FILE__) + '/../test_helper.rb'

describe "shouts for user ..." do
  
  before(:all) do #We only want to hit the webservice once.
    @user = Scrobbler2::user.new "..."
    @shouts = @user.shouts
  end 
  
  it "should be hash" do
    @shouts.should be_kind_of Hash
  end
  
end
