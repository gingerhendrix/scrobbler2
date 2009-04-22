module Scrobbler2
  class Track < Base
    
    def initialize(artist, track)
      @query = {:artist => artist, :track => track}
    end
    
     get_resource :info, :root => 'track'
     get_resource :similar, :root => 'similartracks'
     get_resource :top_fans, :root => 'topfans'
     get_resource :top_tags, :root => 'toptags'
  end
end
