# frozen_string_literal: true

require_relative "lib/fibc/version"

Gem::Specification.new do |spec|
  spec.name          = "fibc"
  spec.version       = Fibc::VERSION
  spec.authors       = ["Eric-Guo"]
  spec.email         = ["eric.guocz@gmail.com"]

  spec.summary       = "Returns the n-th integer value in the Fibonacci Sequence."
  spec.description   = "Returns the n-th integer value in the Fibonacci Sequence."
  spec.homepage      = "https://github.com/Eric-Guo/fibc.git"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Eric-Guo/fibc"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/fibc/extconf.rb"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
