# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yaml/includes/version'

Gem::Specification.new do |spec|
  spec.name          = 'yaml-includes'
  spec.version       = YAML::Includes::VERSION
  spec.authors       = ['Nick Butler']
  spec.email         = ['nick@codeindulgence.com']
  spec.summary       = %q{Adds support for the YAML include directive as defined by the [RAML spec].}
  spec.description   = %q{Allow your YAML files to include external YAML files as per the RAML specification.}
  spec.homepage      = 'https://github.com/codeindulgence/yaml-includes'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'psych', '~> 2.0'
  spec.add_dependency 'activesupport', '~> 4.2'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.2'
  spec.add_development_dependency 'guard', '~> 2.11'
  spec.add_development_dependency 'guard-rspec', '~> 4.5'
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'pry-remote', '~> 0.1'
  spec.add_development_dependency 'pry-nav', '~> 0.2'
  spec.add_development_dependency 'pry-coolline', '~> 0.2'
  spec.add_development_dependency 'pry-awesome_print', '~> 9.6'
end
