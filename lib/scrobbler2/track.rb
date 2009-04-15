module Scrobbler2
  class Track < Base
    
    def initialize(artist, track)
      @query = {:artist => artist, :track => track}
    end
    
     get_resource :info, :root => 'track'
   
  end
end
