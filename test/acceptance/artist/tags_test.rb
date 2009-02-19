require File.dirname(__FILE__) + '/../test_helper.rb'

describe "User's tags for Metallica" do
  
  before(:all) do #We only want to hit the webservice once.
    @artist = Scrobbler2::Artist.new "Metallica"
    @tags = @artist.tags
    puts "TAGS: #{@tags.inspect} \n"
  end 
  
  it "should be a Hash" do
    @tags.should be_kind_of(Hash)
  end
  
  it "should have artist 'Metallica'" do
    @tags['artist'].should == 'Metallica'
  end  
  
  it "should have an array of tags" do
    @tags['tag'].should be_kind_of(Array)
  end  

  
end
