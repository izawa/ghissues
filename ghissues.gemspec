# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ghissues/version'

Gem::Specification.new do |spec|
  spec.name          = "ghissues"
  spec.version       = Ghissues::VERSION
  spec.authors       = ["Izawa Yukimitsu"]
  spec.email         = ["izawa@izawa.org"]
  spec.summary       = %q{Auto issue registration program for Github.}
  spec.description   = %q{Auto issue registration program for Github.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 0"

  spec.add_runtime_dependency "octokit", "> 3"
end

# gem build ghissues.gemspec
