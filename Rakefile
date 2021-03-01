require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "rubocop"
require "rubocop-performance"
require "rubocop-rails"
require "rubocop-rspec"

RSpec::Core::RakeTask.new(:spec)

task default: :spec

desc 'Print out comments that can be used for a GitHub cop election'
task :election do
  configuration_path = File.expand_path('default.yml', File.dirname(__FILE__))
  RuboCop::ConfigLoader.load_file(configuration_path).pending_cops.each do |pending_cop|
    base_urls = {
      'layout' => 'https://docs.rubocop.org/rubocop/cops_layout.html#layout',
      'lint' => 'https://docs.rubocop.org/rubocop/cops_lint.html#lint',
      'style' => 'https://docs.rubocop.org/rubocop/cops_style.html#style',
      'performance' => 'https://docs.rubocop.org/rubocop-performance/cops_performance.html#performance',
      'rails' => 'https://docs.rubocop.org/rubocop-rails/cops_rails.html#rails',
      'rspec' => 'https://docs.rubocop.org/rubocop-rspec/cops_rspec.html#rspec',
    }
    department, anchor = pending_cop.name.downcase.split('/')
    puts <<~COMMENT
      [**#{pending_cop.name}**](#{base_urls.fetch(department)}#{anchor})
      #{pending_cop.metadata.fetch('Description')}

    COMMENT
  end
end
