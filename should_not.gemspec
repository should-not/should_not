# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'should_not/version'

Gem::Specification.new do |spec|
  spec.name          = "should_not"
  spec.version       = ShouldNot::VERSION
  spec.authors       = ["Mark Rushakoff"]
  spec.email         = ["mark.rushakoff@gmail.com"]
  spec.description   = <<-DESC
  You should_not start your specs with the string "should".
  If every spec starts with "should", then it's redundant everywhere.

  Instead, write in an active tone:
  `it "should ignore nil elements"` - BAD
  `it "ignores nil elements"` - GOOD
  DESC
  spec.summary       = %q{Fail specs that start with should.}
  spec.homepage      = "https://github.com/should-not/should_not"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features|integration)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency "rspec", '~> 3.0'
end
