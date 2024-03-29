# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'anchord/version'

Gem::Specification.new do |spec|
  spec.name          = "anchord"
  spec.version       = Anchord::VERSION
  spec.authors       = ["Ejay Canaria"]
  spec.email         = ["ejaypcanaria@gmail.com"]
  spec.summary       = %q{Simple guitar chord generator library for Ruby.}
  spec.description   = %q{The simpliest way to turn letters into human readable guitar chords.}
  spec.homepage      = "http://github.com/ejaypcanaria/anchord"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
