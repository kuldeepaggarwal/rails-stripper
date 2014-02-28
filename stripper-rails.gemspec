# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stripper/rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'stripper-rails'
  spec.version       = Stripper::Rails::VERSION
  spec.authors       = ['Kuldeep Aggarwal']
  spec.email         = ['kd.engineer@yahoo.co.in']
  spec.summary       = "An utility which provides a class method `strip_fields`. It accepts list of fields and removes leading and trailing whitespaces before validation."
  spec.description   = "An utility which provides a class method `strip_fields`. It accepts list of fields and removes leading and trailing whitespaces before validation."
  spec.homepage      = 'https://github.com/kuldeepaggarwal/stripper-rails'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'activemodel'

  spec.add_development_dependency 'bundler', '~> 1.5.2'
  spec.add_development_dependency 'rspec',   '~> 3.0.0.beta2'
  spec.add_development_dependency 'rake',    '~> 10.1.1'
end
