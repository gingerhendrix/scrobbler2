
module Scrobbler2
  class Artist < Base
    
    def initialize(artist)
      @query = {:artist => artist}
    end

    has_resource :events, :root => 'events'
    has_resource :info, :root => 'artist'
    has_resource :shouts, :root => 'shouts'
    has_resource :similar, :root => 'similarartists'
    has_resource :top_albums, :root => 'topalbums'
    has_resource :top_fans, :root => 'topfans'
    has_resource :top_tags, :root => 'toptags'
    has_resource :top_tracks, :root => 'toptracks'
    
    has_resource :tags, :root=> "tags", :auth => true

    def add_tags(tags)
      query = @query.merge :tags => tags.join(",")
      self.class.post_with_auth("artist.addtags", query)
    end
    
  end
end
