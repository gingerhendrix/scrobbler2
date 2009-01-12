require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Event info for 328799" do
  
  before(:all) do #We only want to hit the webservice once.
    @event = Scrobbler2::Event.new "328799"
    @info = @event.info
  end 
  
  it "should be hash" do
    @info.should be_kind_of Hash
  end
  
  it "should have id '328799'" do
    @info["id"].should == "328799"
  end
  
  it "should have title 'Philip Glass'" do
    @info["title"].should == "Philip Glass"
  end
  
  it "should have artists" do
    @info["artists"].should be_kind_of(Hash)
    @info["artists"]['artist'].should be_kind_of(Array)
    @info["artists"]['artist'][0].should == "Philip Glass"
    
    @info["artists"]['headliner'].should == "Philip Glass"
  end

  it "should have venue" do
    @info["venue"].should be_kind_of(Hash)
    @info["venue"]["name"].should == "Barbican Centre"
  end
  
  it "should have startDate" do
    @info.should have_key "startDate"
  end
  
  it "should have url" do
    @info.should have_key "url"
  end
  
  it "should have reviews" do
    @info.should have_key "reviews"
  end
  
  it "should have attendance" do
    @info.should have_key "attendance"
  end
  
  it "should have description" do
    @info.should have_key "description"
  end



  
  it "should have images" do
    @info["image"].should be_kind_of Array
    @info["image"][0].should be_kind_of Hash
    @info["image"][0]['size'].should be_kind_of String
    @info["image"][0]['#text'].should be_kind_of String
    #@info["image"][0]['#text'].should == 'http://userserve-ak.last.fm/serve/34/9527793.jpg'
  end
  
end
