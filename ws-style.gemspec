# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ws/style/version'

Gem::Specification.new do |s|
  s.name          = 'ws-style'
  s.version       = Ws::Style::VERSION
  s.authors       = ['Peter Graham']
  s.email         = ['peterghm@gmail.com']

  s.summary       = 'Shared rubocop config'
  s.description   = 'Shared rubocop config to enforce Ruby style consistently across Wealthsimple services.'
  s.homepage      = 'https://github.com/wealthsimple/ws-style'

  s.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  s.bindir        = 'exe'
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ['lib']
  s.metadata['allowed_push_host'] = 'https://rubygems.org'

  s.add_dependency 'rubocop', '~> 0.60'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'bundler-audit'
  s.add_development_dependency 'git'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec', '~> 3.0'
end
