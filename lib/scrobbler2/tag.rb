
module Scrobbler2
  class Tag < Base

    def initialize(tag)
      @query = {:tag => tag}
    end

    has_singleton_resource :top_tags,   :root => 'toptags'
    has_resource :similar,              :root => 'similar'
    has_resource :top_artists,          :root => 'topartists'
    has_resource :top_albums,           :root => 'topalbums'
    has_resource :top_tracks,           :root => 'toptracks'
    has_resource :weekly_artist_chart,  :root => 'weeklyartistchart'
    has_resource :weekly_chart_list,    :root => 'weeklychartlist'

  end
end
