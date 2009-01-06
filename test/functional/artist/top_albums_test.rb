require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Top Albums for Metallica" do

  before(:all) do #We only want to hit the webservice once.
    @artist = Scrobbler2::Artist.new "Metallica"
    @albums = @artist.top_albums
#    puts "Top Albums: #{@albums.inspect} \n"
  end 

  it "should be a Hash" do
    @albums.should be_kind_of(Hash)
  end
  
  it "should have artist 'Metallica'" do
    @albums["artist"].should == 'Metallica'
  end
  
  it "should contain an array of albums" do
    @albums["album"].should be_kind_of(Array)
  end
  
  it "should contain 'Ride the Lightning'" do
    rtl = @albums["album"].find { |album| album['name'] == 'Ride the Lightning' }
    rtl.should_not be_nil
     
    rtl['artist'].should be_kind_of(Hash)
    rtl['artist']['name'].should == 'Metallica'
    
    rtl['url'].should == "http://www.last.fm/music/Metallica/Ride+the+Lightning"
  end
  
end

