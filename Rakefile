require 'rake'
require 'rake/clean'
require 'rake/testtask'

CLEAN.include("**/*.gem", "**/*.rbc")

namespace :gem do
  desc 'Create the crypt-rot13 gem'
  task :create => [:clean] do
    spec = eval(IO.read('crypt-rot13.gemspec'))
    Gem::Builder.new(spec).build
  end

  desc 'Install the crypt-rot13 gem'
  task :install => [:create] do
    file = Dir["*.gem"].first
    sh "gem install #{file}"
  end
end

Rake::TestTask.new do |t|
  t.warning = true
  t.verbose = true
end

task :default => :test
