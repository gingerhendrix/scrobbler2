require File.dirname(__FILE__) + '/../test_helper.rb'

describe "top_tracks for geo country=ireland" do
  
  before(:all) do #We only want to hit the webservice once.
    @geo = Scrobbler2::Geo.new 
    @top_tracks = @geo.top_tracks :country => "ireland"
  end 
  
  it "should be hash" do
    pending "broken" do
      @top_tracks.should be_kind_of Hash
    end
  end
  
end
