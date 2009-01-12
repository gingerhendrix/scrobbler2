require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Shouts for event 328799" do
  
  before(:all) do #We only want to hit the webservice once.
    @event = Scrobbler2::Event.new "328799"
    @shouts = @event.shouts
#    puts "INFO: #{@info.inspect} \n"
  end 
  
  
  it "should return a Hash" do
    @shouts.should be_kind_of(Hash)
  end
  
  it "should have event 328799" do
    @shouts['event'].should == "328799"
  end
  
  it "should have total" do
    @shouts.should have_key('total')
  end
  
  it "should have array of shouts" do
    @shouts.should have_key('shout')  
    @shouts['shout'].should be_a_kind_of(Array)
    @shouts['shout'].length.should > 0
  end
  
  describe "a shout" do
  
    before(:each) do
      @shout = @shouts['shout'][0]
    end
    
    it "should have a body" do
      @shout.should have_key('body')
    end  
    
    it "should have a author" do
      @shout.should have_key('author')
    end
    
    it "should have a date" do
      @shout.should have_key('date')
    end
  end

end
