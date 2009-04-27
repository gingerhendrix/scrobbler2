require File.dirname(__FILE__) + '/../test_helper.rb'

describe "User info for gingerhendrix" do
  
  before(:all) do #We only want to hit the webservice once.
    @user = Scrobbler2::User.new "gingerhendrix"
    @info = @user.info
  end 
  
  it "should be hash" do
      @info.should be_kind_of Hash
  end
  
  it "should have name 'scrobbler2'" do
      @info["name"].should == "scrobbler2"
  end
  
  
end  
