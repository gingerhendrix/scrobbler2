require File.dirname(__FILE__) + '/../test_helper.rb'

describe "top_tags for user ..." do
  
  before(:all) do #We only want to hit the webservice once.
    @user = Scrobbler2::user.new "..."
    @top_tags = @user.top_tags
  end 
  
  it "should be hash" do
    @top_tags.should be_kind_of Hash
  end
  
end
