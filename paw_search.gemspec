require_relative 'lib/paw_search/version'


Gem::Specification.new do |spec|
  spec.name          = "paw_search"
  spec.version       = PawSearch::VERSION
  spec.authors       = ["jack-wgoode"]
  spec.email         = ["jack.w.goode@icloud.com"]

  spec.summary       = %q{paw_search shelter search CLI Gem.}
  spec.description   = %q{Shows you a list of animal shelters by location }
  spec.homepage      = "https://github.com/jack-wgoode/paw_search"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  
  spec.executables   = ["paw_search_cli"]
  spec.require_paths = ["lib"]
 
  # spec.add_dependency "http"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "pry"
end



