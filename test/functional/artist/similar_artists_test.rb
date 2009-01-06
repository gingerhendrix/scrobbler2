require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Similar artists for Metallica" do

  before(:all) do #We only want to hit the webservice once.
    @artist = Scrobbler2::Artist.new "Metallica"
    @similar = @artist.similar_artists
    puts "Similar: #{@similar.inspect} \n"
  end 

  it "should be an array of artists" do
    pending "Last.fm service currently borken for similar artists - see http://ws.audioscrobbler.com/2.0/?method=artist.getsimilar&artist=cher&api_key=b25b959554ed76058ac220b7b2e0a026&format=json"
  end
  
end

