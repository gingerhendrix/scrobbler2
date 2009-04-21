
describe "Top Fans", :shared => true do

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
      @fan.should have_key('name')
    end  
    
    it "should have a url" do
      @fan.should have_key('url')
    end  
    
    it "should have a weight" do
      @fan.should have_key('weight')
    end
  end

end
