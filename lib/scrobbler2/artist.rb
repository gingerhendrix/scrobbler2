
module Scrobbler2
  class Artist < Base
    
    def initialize(name)
      @name = name
    end
    
    def info(options={}, query={})
      return @info if @info && !options[:force]
      query = query.merge({:artist => @name})
      @info = self.class.get("artist.getinfo", query, options)['artist']
    end
    
    def similar_artists(options={}, query={})
      return @similar if @similar && !options[:force]
      query = query.merge({:artist => @name})
      @info = self.class.get("artist.getsimilar", query, options)['similarartists']
    end
    
    def top_albums(options={}, query={})
      return @top_albums if @top_albums && !options[:force]
      query = query.merge({:artist => @name})
      @info = self.class.get("artist.gettopalbums", query, options)['topalbums']
    end
    
  end
end
