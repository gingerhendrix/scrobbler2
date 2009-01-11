require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Artist info for Metallica" do
  
  before(:all) do #We only want to hit the webservice once.
    @artist = Scrobbler2::Artist.new "Metallica"
    @info = @artist.info
#    puts "INFO: #{@info.inspect} \n"
  end 
  
  it "should be hash" do
    @info.should be_kind_of Hash
  end
  
  it "should have name 'Metallica'" do
    @info["name"].should == "Metallica"
  end
  
  it "should have mbid '65f4f0c5-ef9e-490c-aee3-909e7ae6b2ab'" do
    @info["mbid"].should == '65f4f0c5-ef9e-490c-aee3-909e7ae6b2ab'
  end
  
  it "should have url 'http://www.last.fm/music/Metallica'" do
    @info["url"].should == 'http://www.last.fm/music/Metallica'
  end
  
  it "should have stats" do
    @info["stats"].should be_kind_of Hash
    @info["stats"]["listeners"].should_not be_nil    
    @info["stats"]["playcount"].should_not be_nil
  end
  
  it "should have similar artists" do
    @info["similar"].should be_kind_of Hash
    @info["similar"]["artist"].should be_kind_of Array
    @info["similar"]["artist"][0]["name"].should be_kind_of String
  end
  
  it "should have images" do
    @info["image"].should be_kind_of Array
    @info["image"][0].should be_kind_of Hash
    @info["image"][0]['size'].should be_kind_of String
    @info["image"][0]['#text'].should be_kind_of String
    #@info["image"][0]['#text'].should == 'http://userserve-ak.last.fm/serve/34/9527793.jpg'
  end
  
  it "should have bio" do
    @info["bio"].should be_kind_of Hash
    @info["bio"]["summary"].match('metal band').should_not be_nil
    @info["bio"]["content"].match('Master Of Puppets').should_not be_nil
  end
  
end
