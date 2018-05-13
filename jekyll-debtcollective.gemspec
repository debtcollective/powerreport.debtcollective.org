# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-debtcollective"
  spec.version       = "0.1.0"
  spec.authors       = ["Debt Collective team"]
  spec.email         = ["alex@marcondesian.net"]

  spec.summary       = "Debt Collective Jekyll theme"
  spec.homepage      = "https://debtcollective.org"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|_pages|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.7"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
