require 'rubygems'
require 'httparty'
require 'active_support'
$: << File.dirname(__FILE__)

module Scrobbler2

end

require 'scrobbler2/base.rb'
require 'scrobbler2/auth.rb'
require 'scrobbler2/album.rb'
require 'scrobbler2/artist.rb'
require 'scrobbler2/user.rb'


