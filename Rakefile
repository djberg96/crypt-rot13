require 'rake'
require 'rake/testtask'

desc 'Install the crypt-rot13 library (non-gem)'
task :install do
   dest = File.join(Config::CONFIG['sitelibdir'], 'crypt')
   Dir.mkdir(dest) unless File.exists? dest
   cp 'lib/crypt/rot13.rb', dest, :verbose => true
end

desc 'Build the crypt-rot13 gem'
task :gem do
   spec = eval(IO.read('crypt-rot13.gemspec'))
   Gem::Builder.new(spec).build
end

desc 'Install the crypt-rot13 library as a gem'
task :install_gem => [:gem] do
   file = Dir["*.gem"].first
   sh "gem install #{file}"
end

Rake::TestTask.new do |t|
   t.warning = true
   t.verbose = true
end
