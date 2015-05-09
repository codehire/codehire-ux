# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'codehire/ux/version'

Gem::Specification.new do |spec|
  spec.name          = "codehire-ux"
  spec.version       = Codehire::Ux::VERSION
  spec.authors       = ["Dan Draper"]
  spec.email         = ["daniel@codefire.com"]
  spec.summary       = %q{Common Stylesheets, partials and helpers for all codehire apps.}
  spec.description   = %q{Common Stylesheets, partials and helpers for all codehire apps}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "railties", "~> 4.1"
  spec.add_dependency "gretel", "~> 3.0"
end
