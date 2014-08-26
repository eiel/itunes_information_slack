# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itunes_information_slack/version'

Gem::Specification.new do |spec|
  spec.name          = "itunes_information_slack"
  spec.version       = ItunesInformationSlack::VERSION
  spec.authors       = ["Tomohiko Himura"]
  spec.email         = ["eiel.hal@gmail.com"]
  spec.summary       = %q{Send information on itunes play music informatio to slack}
  spec.description   = %q{Send information on itunes play music informatio to slack}
  spec.homepage      = "https://github.com/eiel/itunes_information_slack"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "itunes-client"
  spec.add_runtime_dependency "slack-notify"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
