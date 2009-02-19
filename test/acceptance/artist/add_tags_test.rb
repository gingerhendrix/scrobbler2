require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Add tag 'test' to Metallica" do
  
  before(:all) do #We only want to hit the webservice once.
    @artist = Scrobbler2::Artist.new "Metallica"
  end 
  
  it "should be able to add a tag" do
    @artist.add_tags ["test"]
    #TODO: We should probably remove tags before we start, check the tags are applied, and then reset the tags in after(:all)
  end
  
end
