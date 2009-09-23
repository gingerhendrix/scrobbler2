module Scrobbler2
  class Track < Base
    
    def initialize(artist, track)
      @query = {:artist => artist, :track => track}
    end
    
     has_resource :info, :root => 'track'
     has_resource :similar, :root => 'similartracks'
     has_resource :top_fans, :root => 'topfans'
     has_resource :top_tags, :root => 'toptags'
  end
end
