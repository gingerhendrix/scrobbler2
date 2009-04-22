module Scrobbler2
  class Venue < Base
    
    def initialize(id)
      @query = {:venue => id}
    end
    
     get_resource :events, :root => "events"
     get_resource :past_events, :root => "events"
   
  end
end
