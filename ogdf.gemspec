lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ogdf/version"

Gem::Specification.new do |spec|
  spec.name          = "ogdf"
  spec.version       = Ogdf::VERSION
  spec.authors       = ["Ribose Inc."]
  spec.email         = ["open.source@ribose.com'"]

  spec.summary       = "OGDF library binding."
  spec.description   = "OGDF library binding."
  spec.homepage      = "https://github.com/lutaml/ruby-ogdf"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/lutaml/ruby-ogdf/releases"

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {spec}/*`.split("\n")

  spec.bindir        = "exe"
  spec.require_paths = ["lib"]
  # spec.executables   = %w[ogdf]

  spec.add_runtime_dependency "thor", "~> 1.0"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "pry", "~> 0.12.2"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
