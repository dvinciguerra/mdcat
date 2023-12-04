# frozen_string_literal: true

require_relative "lib/mdcat/version"

Gem::Specification.new do |spec|
  spec.name = "mdcat"
  spec.version = Mdcat::VERSION
  spec.authors = ["Daniel Vinciguerra"]
  spec.email = ["daniel.vinciguerra@bivee.com.br"]

  spec.summary = "mdcat is a command line tool to cat markdown files with syntax highlight" 
  spec.description = "mdcat is a command line tool to cat markdown files with syntax highlight"
  spec.homepage = "https://github.com/dvinciguerra/mdcat"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "bin"
  spec.executables = spec.files.grep(%r{\Abin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "tty-markdown"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
