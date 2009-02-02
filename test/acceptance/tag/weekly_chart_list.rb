require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Weekly chart list for tag 'Disco''" do
  
  before(:all) do #We only want to hit the webservice once.
    @tag = Scrobbler2::Tag.new 'Disco'
    @list = @tag.weekly_chart_list
  end 
  
  it "should be hash" do
    @list.should be_kind_of Hash
  end
  
  it "should have tag 'Disco'" do
    @list["tag"].should == "Disco"
  end
  

  it "should have a list of charts" do
    @list.should have_key('chart')
    @list['chart'].should be_kind_of(Array)
  end
  
  describe "chart" do
    before(:each) do
      @chart = @list['chart'][0]
    end
    
    it "should have from" do
      @chart.should have_key 'from'
    end
    
    it "should have to" do
      @chart.should have_key 'to'
    end
  
  end
  
end
