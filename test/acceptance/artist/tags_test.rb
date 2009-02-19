require File.dirname(__FILE__) + '/../test_helper.rb'

describe "User's tags for Aphex Twin" do
  
  before(:all) do #We only want to hit the webservice once.
    @artist = Scrobbler2::Artist.new "Aphex Twin"
    @tags = @artist.tags
#    puts "INFO: #{@info.inspect} \n"
  end 
  
  it "should be a Hash" do
    @tags.should be_kind_of(Hash)
  end
  
  
  
end
