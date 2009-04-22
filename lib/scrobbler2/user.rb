module Scrobbler2
  class User < Base
    
    def initialize()
      @query = {}#TODO eg. {:artist => artist, :track => track}
    end
    
     get_resource :events, :root => "events"
   
     get_resource :info, :root => "info"
   
     get_resource :friends, :root => "friends"
   
     get_resource :loved_tracks, :root => "loved_tracks"
   
     get_resource :neighbours, :root => "neighbours"
   
     get_resource :past_events, :root => "past_events"
   
     get_resource :playlists, :root => "playlists"
   
     get_resource :recent_tracks, :root => "recent_tracks"
   
     get_resource :recommended_artists, :root => "recommended_artists"
   
     get_resource :recommended_events, :root => "recommended_events"
   
     get_resource :shouts, :root => "shouts"
   
     get_resource :top_albums, :root => "top_albums"
   
     get_resource :top_artists, :root => "top_artists"
   
     get_resource :top_tags, :root => "top_tags"
   
     get_resource :top_tracks, :root => "top_tracks"
   
     get_resource :weekly_album_chart, :root => "weekly_album_chart"
   
     get_resource :weekly_artist_chart, :root => "weekly_artist_chart"
   
     get_resource :weekly_chart_list, :root => "weekly_chart_list"
   
     get_resource :weekly_track_chart, :root => "weekly_track_chart"
   
  end
end
