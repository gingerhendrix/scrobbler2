require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Similar tags for Disco" do

  before(:all) do #We only want to hit the webservice once.
    @tag = Scrobbler2::Tag.new "Disco"
    @similar = @tag.similar
    puts "Similar: \n\n #{@similar.inspect} \n\n"
  end 

  it "should be an array of artists" do
    pending "Currently Borken xml->hash conversion doesn't like nodes with attributes and children with the same name"
  end
  
end
