# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'notifications/client/version'

Gem::Specification.new do |spec|
  spec.name          = "notifications-ruby-client"
  spec.version       = Notifications::Client::VERSION
  spec.authors       = [
    "bitzesty",
    "dazahern"
  ]

  spec.email         = ["info@bitzesty.com", "daz.ahern@digital.cabinet-office.gov.uk"]

  spec.summary       = "Ruby client for GOV.UK Notifications API"
  spec.homepage      = "https://github.com/alphagov/notifications-ruby-client"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "jwt", "~> 1.5"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "webmock", "~> 2.0"
  spec.add_development_dependency "factory_girl", "~> 4.7"
  spec.add_development_dependency "govuk-lint", "~> 1.1.0"
end
