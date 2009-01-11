require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Shouts for Not Squares" do
  
  before(:all) do #We only want to hit the webservice once.
    @artist = Scrobbler2::Artist.new "Not Squares"
    @shouts = @artist.shouts
#    puts "#{@shouts.inspect}"
  end 
  
  it "should return a Hash" do
    @shouts.should be_kind_of(Hash)
  end
  
  it "should have artist Not Squares" do
    @shouts['artist'].should == "Not Squares"
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
