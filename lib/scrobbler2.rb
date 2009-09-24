require 'rubygems'
require 'activesupport'
require 'httparty'
$: << File.dirname(__FILE__)

module Scrobbler2

end

require 'scrobbler2/base.rb'
require 'scrobbler2/auth.rb'
require 'scrobbler2/album.rb'
require 'scrobbler2/artist.rb'
require 'scrobbler2/event.rb'
require 'scrobbler2/geo.rb'
require 'scrobbler2/group.rb'
require 'scrobbler2/library.rb'
require 'scrobbler2/playlist.rb'
require 'scrobbler2/tag.rb'
require 'scrobbler2/track.rb'
require 'scrobbler2/user.rb'
require 'scrobbler2/venue.rb'

