
module Scrobbler2
  class Tag < Base
    
    def initialize(tag)
      @query = {:tag => tag}
    end

    get_resource :similar, :root => 'similar'
    get_resource :top_artists, :root => 'topartists'
    get_resource :top_albums, :root => 'topalbums'
    get_resource :top_tracks, :root => 'toptracks'
    get_resource :top_tags, :root => 'toptags'
    get_resource :weekly_artist_chart, :root => 'weeklyartistchart'
    get_resource :weekly_chart_list, :root => 'weeklychartlist'
  end
end
