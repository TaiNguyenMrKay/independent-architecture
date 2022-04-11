# frozen_string_literal: true

require_relative "lib/independence/version"

Gem::Specification.new do |spec|
  spec.name          = "independence"
  spec.version       = Independence::VERSION
  spec.authors       = ["TaiNguyenMrKay"]
  spec.email         = ["xuantai.nguyen23081997@gmail.com"]

  spec.summary       = "This gem build a architecture source that base on traiblazer gem"
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  s.add_dependency "active_model_serializers", '0.10.12'
  s.add_dependency "draper", '4.0.1'

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
