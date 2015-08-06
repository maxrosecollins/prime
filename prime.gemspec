# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prime/version'

Gem::Specification.new do |spec|
  spec.authors       = ["Max Rose-Collins"]
  spec.email         = ["max@maxrosecollins.com"]
  spec.summary       = "prime number generator"
  spec.description   = "a program that prints a multiplication table of primes numbers."
  spec.homepage      = "https://github.com/maxrosecollins/prime"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files`.split($\)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.executables   = ["prime"]
  spec.name          = "prime"
  spec.require_paths = ["lib"]
  spec.version       = Prime::VERSION

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
