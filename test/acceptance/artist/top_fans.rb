require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Top Fans for Metallica" do
  
  before(:all) do #We only want to hit the webservice once.
    @artist = Scrobbler2::Artist.new "Metallica"
    @fans = @artist.top_fans
  end 
   it "should return a Hash" do
    @fans.should be_kind_of(Hash)
  end
  
  it "should have artist Metallica" do
    @fans['artist'].should == "Metallica"
  end
  
  it "should have array of users" do
    @fans.should have_key('user')  
    @fans['user'].should be_a_kind_of(Array)
    @fans['user'].length.should > 0
  end
  
  describe "a fan" do
  
    before(:each) do
      @fan = @fans['user'][0]
    end
    
    it "should have a name" do
      @event.should have_key('name')
    end  
    
    it "should have a url" do
      @event.should have_key('url')
    end  
    
    it "should have a weight" do
      @event.should have_key('weight')
    end
  end
end
