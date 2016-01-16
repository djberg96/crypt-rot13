require 'rubygems'

Gem::Specification.new do |spec|
  spec.name       = 'crypt-rot13'
  spec.version    = '1.0.6'
  spec.author     = 'Daniel J. Berger'
  spec.license    = 'Artistic 2.0'
  spec.email      = 'djberg96@gmail.com'
  spec.homepage   = 'http://github.com/djberg96/crypt-rot13'
  spec.summary    = 'Character rotation encryption, i.e. Caesar Cipher'
  spec.test_file  = 'test/test_crypt_rot13.rb'
  spec.files      = Dir['**/*'].reject{ |f| f.include?('git') }
  spec.cert_chain = Dir['certs/*']

  spec.extra_rdoc_files  = ['README', 'CHANGES', 'MANIFEST']

  spec.description = <<-EOF
    The crypt-rot13 library provides an interface for a simple character
    substitution cipher known as ROT13, a variation on the Caesar cipher.
  EOF
end
