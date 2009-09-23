module Scrobbler2
  class Event < Base
    
    def initialize(event_id)
      @query = {:event => event_id}
    end
    
     has_resource :info, :root => 'event'
     has_resource :shouts, :root => 'shouts'
     
  end
end
