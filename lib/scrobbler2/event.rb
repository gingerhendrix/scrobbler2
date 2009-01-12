module Scrobbler2
  class Event < Base
    
    def initialize(event_id)
      @query = {:event => event_id}
    end
    
     get_resource :info, :root => 'event'
     get_resource :shouts, :root => 'shouts'
     
  end
end
