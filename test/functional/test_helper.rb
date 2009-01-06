require 'rubygems'
require 'spec'

$: << File.dirname(__FILE__) + "/../../lib/"

require 'scrobbler2'

Scrobbler2::Base.api_key = "1b89604104e638437e5c992e898b43ab"
