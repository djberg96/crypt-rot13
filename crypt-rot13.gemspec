require 'rubygems'

Gem::Specification.new do |gem|
   gem.name      = 'crypt-rot13'
   gem.version   = '1.0.4'
   gem.author    = 'Daniel J. Berger'
   gem.license   = 'Artistic 2.0'
   gem.email     = 'djberg96@gmail.com'
   gem.homepage  = 'http://www.rubyforge.org/projects/shards'
   gem.summary   = 'Character rotation encryption, i.e. Caesar Cipher'
   gem.test_file = 'test/test_crypt_rot13.rb'
   gem.has_rdoc  = true
   gem.files     = Dir['**/*'].reject{ |f| f.include?('CVS') }

   gem.rubyforge_project = 'shards'
   gem.extra_rdoc_files  = ['README', 'CHANGES', 'MANIFEST']

   gem.description = <<-EOF
      The crypt-rot13 library provides an interface for a simple character
      substitution cipher known as ROT13, a variation on the Caesar cipher.
   EOF
end
