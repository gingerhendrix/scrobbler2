
module Scrobbler2
  class Artist < Base
    
    def initialize(artist)
      @query = {:artist => artist}
    end

    get_resource :info, :root => 'artist'
    get_resource :similar, :root => 'similarartists'
    get_resource :top_albums, :root => 'topalbums'
    get_resource :events, :root => 'events'
    
  end
end
