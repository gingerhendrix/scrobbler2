require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Events for Metallica" do
  
  before(:all) do #We only want to hit the webservice once.
    @artist = Scrobbler2::Artist.new "Metallica"
    @events = @artist.events
  end 
  
  it "should return a Hash" do
    @events.should be_kind_of(Hash)
  end
  
  it "should have artist Metallica" do
    @events['artist'].should == "Metallica"
  end
  
  it "should have total" do
    @events.should have_key('total')
  end
  
  it "should have array of events" do
    @events.should have_key('event')  
    @events['event'].should be_a_kind_of(Array)
    @events['event'].length.should > 0
  end
  
  describe "an event" do
  
    before(:each) do
      @event = @events['event'][0]
    end
    
    it "should have a url" do
      @event.should have_key('url')
    end  
    
    it "should have an array of artists" do
      @event.should have_key('artists')
    end
    
    it "should have a title" do
      @event.should have_key('title')
    end
  end
  
end
