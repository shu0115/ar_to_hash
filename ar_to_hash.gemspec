# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ar_to_hash/version'

Gem::Specification.new do |spec|
  spec.name          = "ar_to_hash"
  spec.version       = ArToHash::VERSION
  spec.authors       = ["shu0115"]
  spec.email         = ["s.matsumoto0115@gmail.com"]
  spec.summary       = "Add to_hash method."
  spec.description   = "Add to_hash method to ActiveRecord::Base."
  spec.homepage      = "https://github.com/shu0115/ar_to_hash"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
