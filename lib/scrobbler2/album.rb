module Scrobbler2
  class Album < Base
    
    def initialize(artist, album)
      @query = {:artist => artist, :album => album}
    end
    
     has_resource :info, :root => 'album'
   
  end
end
