require File.dirname(__FILE__) + "/spec_helper.rb"

describe "Base" do

  before(:each) do
    HTTParty.stub!(:get)
    Scrobbler2::Base.api_key = "api_key"
  end

  it "should call HTTParty.get" do
  
    HTTParty.should_receive(:get).with('http://ws.audioscrobbler.com/2.0/', {:query => {:method=>'artist.getInfo', :format=>'json', :api_key => 'api_key'}})
    Scrobbler2::Base.get('artist.getInfo', {})
  end
  
  it "should have attribute api key" do
    Scrobbler2::Base.api_key = "blah"
    Scrobbler2::Base.api_key.should == "blah"
  end

end


