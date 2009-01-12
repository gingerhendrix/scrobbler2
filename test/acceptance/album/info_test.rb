require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Album info for Ride the Lightning" do
  
  before(:all) do #We only want to hit the webservice once.
    @album = Scrobbler2::Album.new "Metallica", "Ride The Lightning"
    @info = @album.info
#    puts "INFO: #{@info.inspect} \n"
  end 
  
  it "should be hash" do
    @info.should be_kind_of Hash
  end
  
  it "should have name 'Metallica'" do
    @info["name"].should == "Ride the Lightning"
  end
  
  it "should have artist 'Metallica'" do
    @info["artist"].should == "Metallica"
  end

  
  it "should have mbid '456efd39-f0dc-4b4d-87c7-82bbc562d8f3'" do
    @info["mbid"].should == '456efd39-f0dc-4b4d-87c7-82bbc562d8f3'
  end
  
  it "should have url 'http://www.last.fm/music/Metallica'" do
    @info["url"].should == 'http://www.last.fm/music/Metallica/Ride+the+Lightning'
  end
  
  it "should have listeners" do
    @info.should have_key("listeners")
  end
  
  it "should have playcount" do
    @info.should have_key("playcount")
  end

  it "should have images" do
    @info["image"].should be_kind_of Array
    @info["image"][0].should be_kind_of Hash
    @info["image"][0]['size'].should be_kind_of String
    @info["image"][0]['#text'].should be_kind_of String
    #@info["image"][0]['#text'].should == 'http://userserve-ak.last.fm/serve/34/9527793.jpg'
  end
  
  it "should have toptags" do
    pending "TopTags breaks parser" do
      @info["toptags"].should be_kind_of Hash
      @info["toptags"]["tags"].should be_kind_of Array    
      @info["toptags"]["tags"][0].should have_key('name')
      @info["toptags"]["tags"][0].should have_key('url')
    end
  end
end
