require 'rubygems'
require 'spec'
require 'spec/interop/test'

$: << File.dirname(__FILE__) + "/../../lib/"

require 'scrobbler2'
Dir.glob(File.dirname(__FILE__) + "/shared/*.rb") { |shared| require shared }

# These are real, so that the tests will pass.  
# The session-key allows authenticated access as the last.fm user 'scrobbler2' 
# Please do not use them in your own apps.
Scrobbler2::Base.api_key = "c62652cbaabd91e0553c7b415c5a3dbc"
Scrobbler2::Base.api_secret = "03c60c8b07bab6f8e91675d8e16fcd0c"
Scrobbler2::Base.session_key = "91518cf316876a405f3f8194724a3c6e";
