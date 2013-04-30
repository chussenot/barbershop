# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'barbershop/version'

Gem::Specification.new do |spec|
  spec.name          = "barbershop"
  spec.version       = Barbershop::VERSION
  spec.authors       = ["chussenot"]
  spec.email         = ["chussenot@gmail.com"]
  spec.description   = %q{Manage your project with github and trello}
  spec.summary       = %q{Manage your project}

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "github_api"
  spec.add_dependency "ruby-trello"
  spec.add_dependency "boson"
  spec.add_dependency "gaston"
  spec.add_dependency "httparty"
  spec.add_dependency "typhoeus"
  spec.add_dependency "virtus"
  spec.add_dependency "chronic"
  spec.add_dependency "rainbow"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~>2.8"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "fabrication"
  spec.add_development_dependency "ffaker"
end
