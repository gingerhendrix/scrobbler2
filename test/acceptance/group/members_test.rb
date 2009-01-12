require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Members for group stubborn tiny lights" do
  
  before(:all) do #We only want to hit the webservice once.
    @group = Scrobbler2::Group.new "stubborn tiny lights"
    @info = @group.members
  end 
  
  it "should be hash" do
    @info.should be_kind_of Hash
  end
  
  it "should have for 'stubborn tiny lights'" do
    @info["for"].should == "stubborn tiny lights"
  end
  
  it "should have page" do
    @info.should have_key('page')
  end
  
  it "should have perPage" do
    @info.should have_key('perPage')
  end
  
  it "should have totalPages" do
    @info.should have_key('totalPages')
  end
  
  it "should have a list of users" do
    @info.should have_key('user')
    @info['user'].should be_kind_of(Array)
  end
  
  describe "a user" do
    before(:each) do
      @user =  @info['user'][0]
    end
  
    it "should have name" do
      @user.should have_key('name')
    end
    
    it "should have realname" do
       @user.should have_key('realname')
    end
    
    it "should have images" do
      @user["image"].should be_kind_of Array
      @user["image"][0].should be_kind_of Hash
      @user["image"][0]['size'].should be_kind_of String
      @user["image"][0]['#text'].should be_kind_of String
    end
    
    it "should have url" do
      @user.should have_key('url')
    end
  
  end
end
