module Scrobbler2
  class Venue < Base
    
    def initialize(id)
      @query = {:venue => id}
    end
    
     has_resource :events, :root => "events"
     has_resource :past_events, :root => "events"
   
  end
end
