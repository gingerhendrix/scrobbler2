module Scrobbler2
  class Geo < Base
    
    def initialize()
      @query = {}#TODO eg. {:artist => artist, :track => track}
    end
    
     has_resource :events, :root => "events"
   
     has_resource :top_artists, :root => "topartists"
   
     has_resource :top_tracks, :root => "toptracks"
   
  end
end
