

module Scrobbler2
  class Base
          
    def self.get(method, query={}, options={})
      query = query.merge({:api_key => 'b25b959554ed76058ac220b7b2e0a026', :method => method, :format => 'json'})
      options = options.merge({:query => query})
      response = HTTParty.get('http://ws.audioscrobbler.com/2.0/', options)

    end
  end
end
