require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Similar tracks info for Blackened" do

  before(:all) do #We only want to hit the webservice once.
    @scrobbler_track = Scrobbler2::Track.new "Metallica", "Blackened"
    @similar = @scrobbler_track.similar
    puts "Similar: #{@similar.inspect} \n"
  end 

  it "should be hash" do
    @similar.should be_kind_of Hash
  end
  
  it "should have a list of tracks" do 
     @similar.should have_key 'track'
     pending "parser falling over attribute and child with same name" do
       @similar['track'].should be_kind_of(Array)
     end
  end
  
end
