lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "Alimentos/version"

Gem::Specification.new do |spec|
  spec.name          = "Alimentos"
  spec.version       = Alimentos::VERSION
  spec.authors       = ["Alberto Delgado"]
  spec.email         = ["alu0100889772@ull.edu.es"]

  spec.summary       = %q{Gema que define una clase alimento}
  spec.description   = %q{Define una clase alimento y todas sus caracteristicas, además de poder ser utilizada para conjuntos de alimentos y mantener un control de una dieta saludable}
  spec.homepage      = "https://github.com/ULL-ESIT-LPP-1920/tdd-alu0100889772"

  spec.metadata["allowed_push_host"] = "https://github.com/ULL-ESIT-LPP-1920/tdd-alu0100889772"

  spec.metadata["homepage_uri"] = spec.homepage
  #spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
end
