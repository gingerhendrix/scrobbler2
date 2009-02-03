require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Top Albums for tag Disco" do

  before(:all) do #We only want to hit the webservice once.
    @tag = Scrobbler2::Tag.new "Disco"
    @albums = @tag.top_albums
    #puts "Top Albums: \n\n #{@albums.inspect} \n\n"
  end 

  
  it "should be a Hash" do
    @albums.should be_kind_of(Hash)
  end
  
  it "should have tag 'Disco'" do
    @albums["tag"].should == 'Disco'
  end
  
  it "should contain an array of albums" do
    @albums["album"].should be_kind_of(Array)
  end
  
  describe "Album" do
  
    before(:each) do
      @album = @albums['album'][0]
    end
    
    it_should_behave_like "Album"
    
    it "should have tagcount" do
      @album.should have_key 'tagcount'
    end

  end
end
