

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
    
    def self.has_resource(name, options = {})
      define_method name do |*args|
        query = args[1] || {}
        local_options = args[0] || {}
        local_value = instance_variable_get("@#{name.to_s}")
        return local_value if local_value && !options[:force]

        if options[:query]
          query.merge!(options[:query])
        elsif @query
          query.merge!(@query)
        end

        method_name = options[:resource_name] || self.class.name.split("::").last.downcase + ".get#{name.to_s.tr('_', '').downcase}" 
        if options[:auth]
          value = self.class.get_with_auth(method_name, query, local_options)
        else
          value = self.class.get(method_name, query, local_options)
        end
        value = value[options[:root]] if options[:root]
        
        instance_variable_set("@#{name}", value)
      end
    end

    # TODO this needs to be DRYed up, wrt has_resource
    def self.has_singleton_resource(name, options={})
      (class << self; self; end).class_eval do
        define_method(name) do |*args|
          query = args[1] || {}
          local_options = args[0] || {}
          local_value = instance_variable_get("@#{name.to_s}")
          return local_value if local_value && !options[:force]

          query.merge!(options[:query]) if options[:query]

          method_name = options[:resource_name] || self.name.split("::").last.downcase + ".get#{name.to_s.tr('_', '').downcase}"
          if options[:auth]
            value = self.get_with_auth(method_name, query, local_options)
          else
            value = self.get(method_name, query, local_options)
          end
          value = value[options[:root]] if options[:root]

          instance_variable_set("@#{name}", value)
        end
      end
    end

    #implements signed requests
    def self.get_with_auth(method, query={}, options={})
      http_with_auth(:get, method, query, options)["lfm"]
    end
    
    def self.http_with_auth(http_method, method, query={}, options={})
      query = query.merge({:api_key => api_key, :method => method})
      query = query.merge({:sk => session_key}) if session_key
      
      signature = sign(query)      
      query = query.merge({:api_sig => signature})

      if(http_method == :get)
        options = options.merge({:query => query})
      else
        options = options.merge({:body => query})
      end
      response = HTTParty.send(http_method, 'http://ws.audioscrobbler.com/2.0/', options)
    end
    
    def self.post_with_auth(method, query={}, options={})
      http_with_auth(:post, method, query, options)      
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
