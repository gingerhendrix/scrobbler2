require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'spec/rake/spectask'

Dir['tasks/**/*.rake'].each { |rake| load rake }

task :default => 'test:unit'
