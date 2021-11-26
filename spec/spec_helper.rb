require 'bundler/setup'
require 'ws/style'

require 'rubocop/rspec/support'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Include RuboCop RSpec Matchers
  config.include RuboCop::RSpec::ExpectOffense

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expose_dsl_globally = true

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
