require File.dirname(__FILE__) + "/spec_helper.rb"

describe "Tag" do
  before(:each) do
    @tag = Scrobbler2::Tag.new "Disco"
    @tag.class.stub!(:get).and_return Hash.new
  end
  
  it "should have a default query {:tag => 'Disco'}" do
    @tag.instance_variable_get(:@query).should == {:tag => 'Disco'}  
  end
  
  it "similar should call get with 'tag.getSimilar' with query params :tag => @tag" do
    @tag.class.should_receive(:get).with('tag.getsimilar', {:tag => "Disco"}, {}).and_return Hash.new
    @tag.similar
  end

  it "top_albums should call get with 'tag.getTopAlbums' with query params :tag => @tag" do
    @tag.class.should_receive(:get).with('tag.gettopalbums', {:tag => "Disco"}, {}).and_return Hash.new
    @tag.top_albums
  end

  it "top_artists should call get with 'tag.getTopArtists' with query params :tag => @tag" do
    @tag.class.should_receive(:get).with('tag.gettopartists', {:tag => "Disco"}, {}).and_return Hash.new
    @tag.top_artists
  end
  
  it "top_tracks should call get with 'tag.getTopTracks' with query params :tag => @tag" do
    @tag.class.should_receive(:get).with('tag.gettoptracks', {:tag => "Disco"}, {}).and_return Hash.new
    @tag.top_tracks
  end
  
  it "top_tags should call get with 'tag.getTopTags' with query params :tag => @tag" do
    @tag.class.should_receive(:get).with('tag.gettoptags', {:tag => "Disco"}, {}).and_return Hash.new
    @tag.top_tags
  end
  
  it "weekly_artist_chart should call get with 'tag.getWeeklyArtistChart' with query params :tag => @tag" do
    @tag.class.should_receive(:get).with('tag.getweeklyartistchart', {:tag => "Disco"}, {}).and_return Hash.new
    @tag.weekly_artist_chart
  end

  
  it "weekly_chart_list should call get with 'tag.getWeeklyChartList' with query params :tag => @tag" do
    @tag.class.should_receive(:get).with('tag.getweeklychartlist', {:tag => "Disco"}, {}).and_return Hash.new
    @tag.weekly_chart_list
  end

end

