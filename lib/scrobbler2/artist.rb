
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
    
    def tags
      return @tags if @tags
      @tags = self.class.get_with_auth("artist.gettags", @query)["lfm"]["tags"]    
    end

    
  end
end
