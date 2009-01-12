module Scrobbler2
  class Group < Base
    
    def initialize(group_name)
      @query = {:group => group_name}
    end
    
     get_resource :members, :root => 'members'
     get_resource :weekly_album_chart, :root => 'weeklyalbumchart'
     get_resource :weekly_artist_chart, :root => 'weeklyartistchart'
     get_resource :weekly_track_chart, :root => 'weeklytrackchart'
     get_resource :weekly_chart_list, :root => 'weeklychartlist'
  end
end
