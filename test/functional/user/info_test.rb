require File.dirname(__FILE__) + '/../test_helper.rb'

describe "User info for gingerhendrix" do
  
  before(:all) do #We only want to hit the webservice once.
    Scrobbler2::Base.session_key = "d22c32a016d60adf5ea0b1d8a08e305f";
    @user = Scrobbler2::User.new "gingerhendrix"
    @info = @user.info
    puts @info.inspect + "\n"
  end 
  
  it "should be hash" do
    @info.should be_kind_of Hash
  end
  
  it "should have name 'gingerhendrix'" do
    @info["name"].should == "gingerhendrix"
  end
  
  
end  
