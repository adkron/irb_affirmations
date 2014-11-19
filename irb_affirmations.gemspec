# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'irb_affirmations/version'

Gem::Specification.new do |spec|
  spec.name          = "irb_affirmations"
  spec.version       = IrbAffirmations::VERSION
  spec.authors       = ["Amos L King"]
  spec.email         = ["amos.l.king@gmail.com"]
  spec.summary       = %q{Add affirmations to irb}
  spec.description   = %{
  Thanks to @tehviking and his 2014 Rubyconf talk. Sometimes when working
  on a C extension you sometimes need some affirmations in your irb. I've
  tried to provide that for him.
  }
  spec.homepage      = "http://github.com/adkron/irb_affirmations"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
