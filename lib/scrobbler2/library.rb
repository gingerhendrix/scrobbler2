module Scrobbler2
  class Library < Base
    
    def initialize(user)
      @query = {:user => user}
    end
    
     get_resource :artists, :root => 'artists'
     get_resource :albums, :root => 'albums'
     get_resource :tracks, :root => 'tracks'
  end
end
