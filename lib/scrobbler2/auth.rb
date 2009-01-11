module Scrobbler2
  class Auth < Base
 
    def token
      return @token if @token
      @token = self.class.get_with_auth("auth.gettoken")["lfm"]["token"]
    end 
    
    def url
      "http://www.last.fm/api/auth/?api_key=#{api_key}&token=#{token}"     
    end
    
    def session
      return @session if @session
      @session = self.class.get_with_auth("auth.getsession", {:token => token})["lfm"]["session"]
    end
  
  end
end
