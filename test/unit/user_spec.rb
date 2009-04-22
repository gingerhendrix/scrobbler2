require File.dirname(__FILE__) + "/spec_helper.rb"

describe "User" do
  before(:each) do
    @user = Scrobbler2::User.new "username"
    @user.class.stub!(:get).and_return Hash.new
  end
  
  it "should have a default query {:user => username}" do
    @user.instance_variable_get(:@query).should == {:user => "username"}  
  end
  
  
  
  it "events should call get with 'user.getevents'" do
    @user.class.should_receive(:get).with('user.getevents', anything(), anything()).and_return Hash.new
    @user.events
  end
  
  
  
  it "info should call get with 'user.getinfo'" do
    @user.class.should_receive(:get_with_auth).with('user.getinfo', anything(), anything()).and_return Hash.new
    @user.info
  end
  
  
  
  it "friends should call get with 'user.getfriends'" do
    @user.class.should_receive(:get).with('user.getfriends', anything(), anything()).and_return Hash.new
    @user.friends
  end
  
  
  
  it "loved_tracks should call get with 'user.getloved_tracks'" do
    @user.class.should_receive(:get).with('user.getlovedtracks', anything(), anything()).and_return Hash.new
    @user.loved_tracks
  end
  
  
  
  it "neighbours should call get with 'user.getneighbours'" do
    @user.class.should_receive(:get).with('user.getneighbours', anything(), anything()).and_return Hash.new
    @user.neighbours
  end
  
  
  
  it "past_events should call get with 'user.getpastevents'" do
    @user.class.should_receive(:get).with('user.getpastevents', anything(), anything()).and_return Hash.new
    @user.past_events
  end
  
  
  
  it "playlists should call get with 'user.getplaylists'" do
    @user.class.should_receive(:get).with('user.getplaylists', anything(), anything()).and_return Hash.new
    @user.playlists
  end
  
  
  
  it "recent_tracks should call get with 'user.getrecenttracks'" do
    @user.class.should_receive(:get).with('user.getrecenttracks', anything(), anything()).and_return Hash.new
    @user.recent_tracks
  end
  
  
  
  it "recommended_artists should call get with 'user.getrecommendedartists'" do
    @user.class.should_receive(:get_with_auth).with('user.getrecommendedartists', anything(), anything()).and_return Hash.new
    @user.recommended_artists
  end
  
  
  
  it "recommended_events should call get with 'user.getrecommendedevents'" do
    @user.class.should_receive(:get_with_auth).with('user.getrecommendedevents', anything(), anything()).and_return Hash.new
    @user.recommended_events
  end
  
  
  
  it "shouts should call get with 'user.getshouts'" do
    @user.class.should_receive(:get).with('user.getshouts', anything(), anything()).and_return Hash.new
    @user.shouts
  end
  
  
  
  it "top_albums should call get with 'user.gettop_albums'" do
    @user.class.should_receive(:get).with('user.gettopalbums', anything(), anything()).and_return Hash.new
    @user.top_albums
  end
  
  
  
  it "top_artists should call get with 'user.gettop_artists'" do
    @user.class.should_receive(:get).with('user.gettopartists', anything(), anything()).and_return Hash.new
    @user.top_artists
  end
  
  
  
  it "top_tags should call get with 'user.gettop_tags'" do
    @user.class.should_receive(:get).with('user.gettoptags', anything(), anything()).and_return Hash.new
    @user.top_tags
  end
  
  
  
  it "top_tracks should call get with 'user.gettop_tracks'" do
    @user.class.should_receive(:get).with('user.gettoptracks', anything(), anything()).and_return Hash.new
    @user.top_tracks
  end
  
  
  
  it "weekly_album_chart should call get with 'user.getweekly_album_chart'" do
    @user.class.should_receive(:get).with('user.getweeklyalbumchart', anything(), anything()).and_return Hash.new
    @user.weekly_album_chart
  end
  
  
  
  it "weekly_artist_chart should call get with 'user.getweekly_artist_chart'" do
    @user.class.should_receive(:get).with('user.getweeklyartistchart', anything(), anything()).and_return Hash.new
    @user.weekly_artist_chart
  end
  
  
  
  it "weekly_chart_list should call get with 'user.getweekly_chart_list'" do
    @user.class.should_receive(:get).with('user.getweeklychartlist', anything(), anything()).and_return Hash.new
    @user.weekly_chart_list
  end
  
  
  
  it "weekly_track_chart should call get with 'user.getweekly_track_chart'" do
    @user.class.should_receive(:get).with('user.getweeklytrackchart', anything(), anything()).and_return Hash.new
    @user.weekly_track_chart
  end
  
  

end
