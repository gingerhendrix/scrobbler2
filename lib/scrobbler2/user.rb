module Scrobbler2
  class User < Base
    
    def initialize(username)
      @query = {:user => username}
    end
    
     get_resource :events, :root => "events"
     get_resource :info, :root=>"user", :auth=>true, :query => {}
     get_resource :friends, :root => "friends"
     get_resource :loved_tracks, :root => "lovedtracks"
     get_resource :neighbours, :root => "neighbours"
     get_resource :past_events, :root => "events"
     get_resource :playlists, :root => "playlists"
     get_resource :recent_tracks, :root => "recenttracks"
     get_resource :recommended_artists, :root => "recommendedartists", :auth => true, :query => {}
     get_resource :recommended_events, :root => "recommendedevents", :auth => true, :query => {}
     get_resource :shouts, :root => "shouts"
     get_resource :top_albums, :root => "topalbums"
     get_resource :top_artists, :root => "topartists"
     get_resource :top_tags, :root => "toptags"
     get_resource :top_tracks, :root => "toptracks"
     get_resource :weekly_album_chart, :root => "weeklyalbumchart"
     get_resource :weekly_artist_chart, :root => "weeklyartistchart"
     get_resource :weekly_chart_list, :root => "weeklychartlist"
     get_resource :weekly_track_chart, :root => "weeklytrackchart"
   
  end
end
