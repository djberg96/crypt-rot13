require 'rubygems'

Gem::Specification.new do |spec|
  spec.name       = 'crypt-rot13'
  spec.version    = '1.2.0'
  spec.author     = 'Daniel J. Berger'
  spec.license    = 'Apache-2.0'
  spec.email      = 'djberg96@gmail.com'
  spec.homepage   = 'http://github.com/djberg96/crypt-rot13'
  spec.summary    = 'Character rotation encryption, i.e. Caesar Cipher'
  spec.test_file  = 'spec/crypt_rot13_spec.rb'
  spec.files      = Dir['**/*'].reject{ |f| f.include?('git') }
  spec.cert_chain = Dir['certs/*']

  spec.add_development_dependency('rake')
  spec.add_development_dependency('rspec', '~> 3.9')
  spec.add_development_dependency('rubocop')
  spec.add_development_dependency('rubocop-rspec')

  spec.metadata = {
    'homepage_uri'          => 'https://github.com/djberg96/crypt-rot13',
    'bug_tracker_uri'       => 'https://github.com/djberg96/crypt-rot13/issues',
    'changelog_uri'         => 'https://github.com/djberg96/crypt-rot13/blob/main/CHANGES.md',
    'documentation_uri'     => 'https://github.com/djberg96/crypt-rot13/wiki',
    'source_code_uri'       => 'https://github.com/djberg96/crypt-rot13',
    'wiki_uri'              => 'https://github.com/djberg96/crypt-rot13/wiki',
    'rubygems_mfa_required' => 'true',
    'github_repo'           => 'https://github.com/djberg96/crypt-rot13',
    'funding_uri'           => 'https://github.com/sponsors/djberg96'
  }

  spec.description = <<-EOF
    The crypt-rot13 library provides an interface for a simple character
    substitution cipher known as ROT13, a variation on the Caesar cipher.
  EOF
end
