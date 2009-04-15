require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Track info for Blackened" do

  before(:all) do #We only want to hit the webservice once.
    @scrobbler_track = Scrobbler2::Track.new "Metallica", "Blackened"
    @track = @scrobbler_track.info
#    puts "INFO: #{@info.inspect} \n"
  end 

  it "should be hash" do
    @track.should be_kind_of Hash
  end
  
  it_should_behave_like "Track"

  it { @track.should have_key 'listeners' }  
  it { @track.should have_key 'playcount' }
  it { @track.should have_key 'duration' }
  it { @track.should have_key 'streamable' }

  describe "Album" do
  
    before(:each) do 
      @album = @track['album']
    end 
    
    it_should_behave_like "Album with simple artist and title"
  end
  
  it "should have array of tags as toptags" do
    @track.should have_key 'toptags'
    @track['toptags'].should have_key 'tag'
    @track['toptags']['tag'].should be_kind_of(Array)
  end
  
  describe "tag" do
    before(:each) do
      @tag = @track['toptags']['tag'][0]
    end
    
    it { @tag.should have_key 'name' }
    it { @tag.should have_key 'url' }     
  
  end
  
end
