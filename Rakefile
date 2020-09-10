require 'rake'
require 'rake/clean'
require 'rspec/core/rake_task'

CLEAN.include("**/*.gem", "**/*.rbc")

namespace :gem do
  desc 'Create the crypt-rot13 gem'
  task :create => [:clean] do
    require 'rubygems/package'
    spec = eval(IO.read('crypt-rot13.gemspec'))
    spec.signing_key = File.join(Dir.home, '.ssh', 'gem-private_key.pem')
    Gem::Package.build(spec, true)
  end

  desc 'Install the crypt-rot13 gem'
  task :install => [:create] do
    file = Dir["*.gem"].first
    sh "gem install -l #{file}"
  end
end

RSpec::Core::RakeTask.new do |t|
  t.pattern = 'spec/crypt_rot13_spec.rb'
end

task :default => :spec
