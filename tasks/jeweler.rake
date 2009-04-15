begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "scrobbler2"
    s.summary = "A ruby library for accessing the last.fm v2 webservices"
    s.email = "gingerhendrix@gmail.com"
    s.homepage = "http://github.com/gingerhendrix/scrobbler2"
    s.description = "A ruby library for accessing the last.fm v2 webservices"
    s.authors = ["Gareth Andrew","Kurt Schrader"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end
