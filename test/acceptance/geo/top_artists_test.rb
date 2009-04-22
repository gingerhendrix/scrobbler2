require File.dirname(__FILE__) + '/../test_helper.rb'

describe "top_artists for geo country=ireland" do
  
  before(:all) do #We only want to hit the webservice once.
    @geo = Scrobbler2::Geo.new 
    @top_artists = @geo.top_artists :country => "ireland"
  end 
  
  it "should be hash" do
    pending "broken" do
      @top_artists.should be_kind_of Hash
    end
  end
  
end
