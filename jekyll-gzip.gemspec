# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require File.expand_path('../lib/jekyll-gzip/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "jekyll-gzip"
  spec.version       = Jekyll::Gzip::VERSION
  spec.authors       = ["Jan Lindblom"]
  spec.email         = ["janlindblom@fastmail.fm"]
  spec.summary       = %q{Adds gzip-compressed versions of css and javascript files.}
  spec.description   = %q{Adds gzip-compressed versions of css and javascript files.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "jekyll", "~> 2.5"
end
