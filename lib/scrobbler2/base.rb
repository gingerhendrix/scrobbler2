

module Scrobbler2
  class Base
    cattr_accessor :api_key
          
    def self.get(method, query={}, options={})
      query = query.merge({:api_key => api_key, :method => method, :format => 'json'})
      options = options.merge({:query => query})
      response = HTTParty.get('http://ws.audioscrobbler.com/2.0/', options)

    end
  end
end
