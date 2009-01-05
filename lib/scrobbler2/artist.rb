
module Scrobbler2
  class Artist < Base
    
    def initialize(name)
      @name = name
    end
    
    def info(options={}, query={})
      return @info if @info && !options[:force]
      query = query.merge({:artist => @name})
      @info = self.class.get("artist.getinfo", query, options)['lfm']['artist']
    end
    
  end
end
