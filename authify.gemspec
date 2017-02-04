# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'authify/version'

Gem::Specification.new do |spec|
  spec.name          = "authify"
  spec.version       = Authify::VERSION
  spec.authors       = ["Jonathan Gnagy"]
  spec.email         = ["jgnagy@knuedge.com"]

  spec.summary       = 'Authify Identity Management Service'
  spec.homepage      = 'https://github.com/knuedge/authify'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '~> 2.0'

  spec.add_runtime_dependency 'authify-core', Authify::VERSION
  spec.add_runtime_dependency 'authify-middleware', Authify::VERSION
  spec.add_runtime_dependency 'authify-api', Authify::VERSION

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
