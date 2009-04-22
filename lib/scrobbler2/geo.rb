module Scrobbler2
  class Geo < Base
    
    def initialize()
      @query = {}#TODO eg. {:artist => artist, :track => track}
    end
    
     get_resource :events, :root => "events"
   
     get_resource :top_artists, :root => "topartists"
   
     get_resource :top_tracks, :root => "toptracks"
   
  end
end
