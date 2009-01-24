require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Similar artists for Metallica" do

  before(:all) do #We only want to hit the webservice once.
    @artist = Scrobbler2::Artist.new "Metallica"
    @similar = @artist.similar
    puts "Similar: #{@similar.inspect} \n"
  end 

  it "should be a Hash" do
    @similar.should be_kind_of Hash
  end
  
  it "should have an array of tags" do
    pending "XML parses currently broken for similar artists"
  end
  
end

