require File.dirname(__FILE__) + '/../test_helper.rb'

describe "past_events for venue 8929268 (The Menagerie)" do
  
  before(:all) do #We only want to hit the webservice once.
    @venue = Scrobbler2::Venue.new "8929268"
    @past_events = @venue.past_events
  end 
  
  it "should be hash" do
    @past_events.should be_kind_of Hash
  end
  
end
