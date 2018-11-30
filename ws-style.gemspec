# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ws/style/version"

Gem::Specification.new do |spec|
  spec.name          = "ws-style"
  spec.version       = Ws::Style::VERSION
  spec.authors       = ["Peter Graham"]
  spec.email         = ["peterghm@gmail.com"]

  spec.summary       = %q{Shared rubocop config}
  spec.description   = %q{Shared rubocop config to enforce Ruby style consistently across Wealthsimple services.}
  spec.homepage      = "https://github.com/wealthsimple/ws-style"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "~> 0.60"

  spec.add_development_dependency "bundler-audit"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.0"
end
