module Scrobbler2
  class User < Base
    
    def initialize(username)
      @username = username
    end
    
    def info(options={}, query={})
      return @info if @info && !options[:force]
      @info = self.class.get_with_auth("user.getinfo", query, options)["lfm"]["user"]
    end
    
    
  end
end
