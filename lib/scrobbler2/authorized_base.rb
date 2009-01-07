
require 'digest/md5'

#
# Steps for auth are
#   1. Fetch Auth Token 
#   2. Send the user to the auth page
#   3. Fetch a session
#   4. (outside of this class) store the session - has infinite lifetime
#   5. In future set AuthorizedBase.session_key to skip auth
#
module Scrobbler2
  class AuthorizedBase < Base
    cattr_accessor :api_secret
    cattr_accessor :session_key
   
    def self.token
      return @token if @token
      @token = get("auth.gettoken")["lfm"]["token"]
    end 
    
    def self.auth_url
      "http://www.last.fm/api/auth/?api_key=#{api_key}&token=#{token}"     
    end
    
    def self.session
      @@session = get("auth.getsession", {:token => token})["lfm"]["session"]
    end
    
    def self.session_key
      return @@session_key if @@session_key
      return @@session['key'] if @@session
    end
    
    def self.get(method, query={}, options={})
      #implements signed requests
      query = query.merge({:api_key => api_key, :method => method})
      signature = sign(query)      
      query = query.merge({:api_sig => signature})

      #query = query.merge({:sk => session_key}) if session_key


      options = options.merge({:query => query})

      puts "Options: " + options.inspect + "\n"
      response = HTTParty.get('http://ws.audioscrobbler.com/2.0/', options)

    end
    
    def self.sign(query)
      signature = query_signature(query)
      md5 = Digest::MD5.hexdigest(signature)
    end
    
    def self.query_signature(query)
      signature = query.sort {|a,b| a[0].to_s <=> b[0].to_s }.map { |param| param.join('') }.join('')
      signature = "#{signature}#{api_secret}"
      puts "Signature: #{signature}"
      signature
    end
    
  end
end
  
