# frozen_string_literal: true

require_relative "lib/pry/usable/version"

Gem::Specification.new do |spec|
  spec.name          = "pry-usable"
  spec.version       = Pry::Usable::VERSION
  spec.authors       = ["Ryan Buckley"]
  spec.email         = ["ridiculous@hey.com"]

  spec.summary       = "Adds usable functionality to pry sessions"
  spec.description   = "Adds usable functionality to pry sessions, such as a persisted #conf struct for storing records"
  spec.homepage      = "https://github.com"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = `git ls-files -z`.split("\x0").keep_if { |f| f =~ /usable/ and f !~ /spec\// }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "usable", ">= 3"
  spec.add_dependency "pry", ">= 0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
