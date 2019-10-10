Gem::Specification.new do |spec|
  spec.name          = 'lita-onewheel-youtube'
  spec.version       = '0.2.0'
  spec.authors       = ['Andrew Kreps']
  spec.email         = ['andrew.kreps@gmail.com']
  spec.description   = 'An implementation of Google Custom Search Engine for searching Youtube in chat.'
  spec.summary       = 'CSE Details to follow'
  spec.homepage      = 'https://github.com/onewheelskyward/lita-onewheel-youtube'
  spec.license       = 'MIT'
  spec.metadata      = { 'lita_plugin_type' => 'handler' }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'lita', '~> 4'
  spec.add_runtime_dependency 'rest-client', '~> 2'
  spec.add_runtime_dependency 'addressable', '~> 2.4'
  spec.add_runtime_dependency 'onewheel-google', '~> 1'

  spec.add_development_dependency 'bundler', '~> 2'
  spec.add_development_dependency 'rake', '~> 11'
  spec.add_development_dependency 'rack-test', '~> 0'
  spec.add_development_dependency 'rspec', '~> 3'
  spec.add_development_dependency 'simplecov', '~> 0'
  spec.add_development_dependency 'coveralls', '~> 0'
end
