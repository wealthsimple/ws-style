# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ws/style/version'

Gem::Specification.new do |s|
  s.name = 'ws-style'
  s.version = Ws::Style::VERSION
  s.authors = ['Peter Graham']
  s.email = ['peterghm@gmail.com']

  s.summary = 'Shared rubocop config'
  s.description = 'Shared config to enforce Ruby style consistently across Wealthsimple services.'
  s.homepage = 'https://github.com/wealthsimple/ws-style'

  s.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  s.bindir = 'exe'
  s.executables = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ['lib']
  s.required_ruby_version = '>= 3.0'

  s.add_dependency 'standard', '>= 1.30.1'
  s.add_dependency 'standard-custom', '>= 1.0.2'
  s.add_dependency 'standard-rails', '>= 0.1.0'
  s.add_dependency 'rubocop-rspec', '>= 2.2.0'
  s.add_dependency 'rubocop-vendor', '>= 0.11'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'bundler-audit'
  s.add_development_dependency 'git'
  s.add_development_dependency 'parse_a_changelog'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec', '~> 3.13.0'
end
