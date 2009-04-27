
module Scrobbler2
  class Artist < Base
    
    def initialize(artist)
      @query = {:artist => artist}
    end

    get_resource :events, :root => 'events'
    get_resource :info, :root => 'artist'
    get_resource :shouts, :root => 'shouts'
    get_resource :similar, :root => 'similarartists'
    get_resource :top_albums, :root => 'topalbums'
    get_resource :top_fans, :root => 'topfans'
    get_resource :top_tags, :root => 'toptags'
    get_resource :top_tracks, :root => 'toptracks'
    
    get_resource :tags, :root=> "tags", :auth => true

    def add_tags(tags)
      query = @query.merge :tags => tags.join(",")
      self.class.post_with_auth("artist.addtags", query)
    end
    
  end
end
