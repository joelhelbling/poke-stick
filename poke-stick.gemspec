lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "poke/stick/version"

Gem::Specification.new do |spec|
  spec.name = "poke-stick"
  spec.version = Poke::Stick::VERSION
  spec.authors = ["Joel Helbling"]
  spec.email = ["joel@joelhelbling.com"]
  spec.summary = "A command-line client for the Poke message transport server."
  spec.description = "A command-line client for the Poke message transport server."
  spec.homepage = "http://github.com/joelhelbling/poke-stick"
  spec.license = "MIT"

  spec.files = `git ls-files -z`.split("\x0")
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.5"
  spec.add_development_dependency "rake", "~> 13.1"
  spec.add_development_dependency "rdoc"
  spec.add_development_dependency "aruba", "~> 2.2"
  spec.add_development_dependency "rspec", "~> 3.12"
  spec.add_development_dependency "pry", "~> 0.14"
  spec.add_development_dependency "standard", "~> 1.32"
  spec.add_dependency "methadone", "~> 2.0"
  spec.add_dependency "rack", "~> 3.0"
end
