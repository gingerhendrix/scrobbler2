require File.dirname(__FILE__) + '/../test_helper.rb'

describe "events for geo location=belfast" do
  
  before(:all) do #We only want to hit the webservice once.
    @geo = Scrobbler2::Geo.new 
    @events = @geo.events :location => "belfast"
  end 
  
  it "should be hash" do
    @events.should be_kind_of Hash
  end
  
end
