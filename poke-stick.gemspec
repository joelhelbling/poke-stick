# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'poke/stick/version'

Gem::Specification.new do |spec|
  spec.name          = "poke-stick"
  spec.version       = Poke::Stick::VERSION
  spec.authors       = ["Joel Helbling"]
  spec.email         = ["joel@joelhelbling.com"]
  spec.summary       = %q{A command-line client for the Poke message transport server.}
  spec.description   = %q{A command-line client for the Poke message transport server.}
  spec.homepage      = "http://github.com/joelhelbling/poke-stick"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency('rdoc')
  spec.add_development_dependency('aruba')
  spec.add_dependency('methadone', '~> 1.8.0')
  spec.add_dependency('rack', '~> 1.6.0')
  spec.add_development_dependency('rspec', '~> 2.99')
  spec.add_development_dependency('pry', '~> 0.10.1')
end
