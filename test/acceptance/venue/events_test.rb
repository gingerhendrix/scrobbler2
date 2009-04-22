require File.dirname(__FILE__) + '/../test_helper.rb'

describe "events for venue 8929268 (The Menagerie)" do
  
  before(:all) do #We only want to hit the webservice once.
    @venue = Scrobbler2::Venue.new "8929268"
    @events = @venue.events
  end 
  
  it "should be hash" do
    @events.should be_kind_of Hash
  end
  
end
