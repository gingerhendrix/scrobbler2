

module Scrobbler2
  class Base
    cattr_accessor :api_key
    cattr_accessor :api_secret
    cattr_accessor :session_key
          
    def self.get(method, query={}, options={})
      query = query.merge({:api_key => api_key, :method => method, :format => 'json'})
      options = options.merge({:query => query})
      response = HTTParty.get('http://ws.audioscrobbler.com/2.0/', options)
    end
    
    def self.session_key
      return @@session_key if @@session_key
      return @@session['key'] if @@session
    end

    #implements signed requests
    def self.get_with_auth(method, query={}, options={})
      query = query.merge({:api_key => api_key, :method => method})
      signature = sign(query)      
      query = query.merge({:api_sig => signature})

      #query = query.merge({:sk => session_key}) if session_key

      options = options.merge({:query => query})

      response = HTTParty.get('http://ws.audioscrobbler.com/2.0/', options)
    end
    
    def self.sign(query)
      signature = query_signature(query)
      md5 = Digest::MD5.hexdigest(signature)
    end
    
    def self.query_signature(query)
      signature = query.sort {|a,b| a[0].to_s <=> b[0].to_s }.map { |param| param.join('') }.join('')
      signature = "#{signature}#{api_secret}"
      signature
    end
  end
end
