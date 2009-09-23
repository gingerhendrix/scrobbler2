module Scrobbler2
  class Group < Base
    
    def initialize(group_name)
      @query = {:group => group_name}
    end
    
     has_resource :members, :root => 'members'
     has_resource :weekly_album_chart, :root => 'weeklyalbumchart'
     has_resource :weekly_artist_chart, :root => 'weeklyartistchart'
     has_resource :weekly_track_chart, :root => 'weeklytrackchart'
     has_resource :weekly_chart_list, :root => 'weeklychartlist'
  end
end
