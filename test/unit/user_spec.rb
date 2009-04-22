require File.dirname(__FILE__) + "/spec_helper.rb"

describe "User" do
  before(:each) do
    @user = Scrobbler2::User.new "..."
    @user.class.stub!(:get).and_return Hash.new
  end
  
  it "should have a default query {TODO}" do
    @user.instance_variable_get(:@query).should == {}  
  end
  
  
  
  it "events should call get with 'user.getevents'" do
    @user.class.should_receive(:get).with('user.getevents', anything(), anything()).and_return Hash.new
    @user.events
  end
  
  
  
  it "info should call get with 'user.getinfo'" do
    @user.class.should_receive(:get).with('user.getinfo', anything(), anything()).and_return Hash.new
    @user.info
  end
  
  
  
  it "friends should call get with 'user.getfriends'" do
    @user.class.should_receive(:get).with('user.getfriends', anything(), anything()).and_return Hash.new
    @user.friends
  end
  
  
  
  it "loved_tracks should call get with 'user.getloved_tracks'" do
    @user.class.should_receive(:get).with('user.getloved_tracks', anything(), anything()).and_return Hash.new
    @user.loved_tracks
  end
  
  
  
  it "neighbours should call get with 'user.getneighbours'" do
    @user.class.should_receive(:get).with('user.getneighbours', anything(), anything()).and_return Hash.new
    @user.neighbours
  end
  
  
  
  it "past_events should call get with 'user.getpast_events'" do
    @user.class.should_receive(:get).with('user.getpast_events', anything(), anything()).and_return Hash.new
    @user.past_events
  end
  
  
  
  it "playlists should call get with 'user.getplaylists'" do
    @user.class.should_receive(:get).with('user.getplaylists', anything(), anything()).and_return Hash.new
    @user.playlists
  end
  
  
  
  it "recent_tracks should call get with 'user.getrecent_tracks'" do
    @user.class.should_receive(:get).with('user.getrecent_tracks', anything(), anything()).and_return Hash.new
    @user.recent_tracks
  end
  
  
  
  it "recommended_artists should call get with 'user.getrecommended_artists'" do
    @user.class.should_receive(:get).with('user.getrecommended_artists', anything(), anything()).and_return Hash.new
    @user.recommended_artists
  end
  
  
  
  it "recommended_events should call get with 'user.getrecommended_events'" do
    @user.class.should_receive(:get).with('user.getrecommended_events', anything(), anything()).and_return Hash.new
    @user.recommended_events
  end
  
  
  
  it "shouts should call get with 'user.getshouts'" do
    @user.class.should_receive(:get).with('user.getshouts', anything(), anything()).and_return Hash.new
    @user.shouts
  end
  
  
  
  it "top_albums should call get with 'user.gettop_albums'" do
    @user.class.should_receive(:get).with('user.gettop_albums', anything(), anything()).and_return Hash.new
    @user.top_albums
  end
  
  
  
  it "top_artists should call get with 'user.gettop_artists'" do
    @user.class.should_receive(:get).with('user.gettop_artists', anything(), anything()).and_return Hash.new
    @user.top_artists
  end
  
  
  
  it "top_tags should call get with 'user.gettop_tags'" do
    @user.class.should_receive(:get).with('user.gettop_tags', anything(), anything()).and_return Hash.new
    @user.top_tags
  end
  
  
  
  it "top_tracks should call get with 'user.gettop_tracks'" do
    @user.class.should_receive(:get).with('user.gettop_tracks', anything(), anything()).and_return Hash.new
    @user.top_tracks
  end
  
  
  
  it "weekly_album_chart should call get with 'user.getweekly_album_chart'" do
    @user.class.should_receive(:get).with('user.getweekly_album_chart', anything(), anything()).and_return Hash.new
    @user.weekly_album_chart
  end
  
  
  
  it "weekly_artist_chart should call get with 'user.getweekly_artist_chart'" do
    @user.class.should_receive(:get).with('user.getweekly_artist_chart', anything(), anything()).and_return Hash.new
    @user.weekly_artist_chart
  end
  
  
  
  it "weekly_chart_list should call get with 'user.getweekly_chart_list'" do
    @user.class.should_receive(:get).with('user.getweekly_chart_list', anything(), anything()).and_return Hash.new
    @user.weekly_chart_list
  end
  
  
  
  it "weekly_track_chart should call get with 'user.getweekly_track_chart'" do
    @user.class.should_receive(:get).with('user.getweekly_track_chart', anything(), anything()).and_return Hash.new
    @user.weekly_track_chart
  end
  
  

end
