module Scrobbler2
  class Library < Base
    
    def initialize(user)
      @query = {:user => user}
    end
    
     has_resource :artists, :root => 'artists'
     has_resource :albums, :root => 'albums'
     has_resource :tracks, :root => 'tracks'
  end
end
