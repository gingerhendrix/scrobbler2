require File.dirname(__FILE__) + '/../test_helper.rb'

describe "User info for gingerhendrix" do
  
  before(:all) do #We only want to hit the webservice once.
    @user = Scrobbler2::User.new "gingerhendrix"
    @info = @user.info
#    puts @info.inspect + "\n"
  end 
  
  it "should be hash" do
    pending "Auth broken" do
      @info.should be_kind_of Hash
    end
  end
  
  it "should have name 'gingerhendrix'" do
    pending "Auth broken" do
      @info["name"].should == "gingerhendrix"
    end
  end
  
  
end  
