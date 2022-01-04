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
  configuration = RuboCop::ConfigLoader.load_file(configuration_path)
  RuboCop::ConfigLoader.default_configuration.pending_cops.each do |pending_cop|
    base_urls = {
      'gemspec' => 'https://docs.rubocop.org/rubocop/cops_gemspec.html#gemspec',
      'layout' => 'https://docs.rubocop.org/rubocop/cops_layout.html#layout',
      'lint' => 'https://docs.rubocop.org/rubocop/cops_lint.html#lint',
      'performance' => 'https://docs.rubocop.org/rubocop-performance/cops_performance.html#performance',
      'rails' => 'https://docs.rubocop.org/rubocop-rails/cops_rails.html#rails',
      'rspec' => 'https://docs.rubocop.org/rubocop-rspec/cops_rspec.html#rspec',
      'security' => 'https://docs.rubocop.org/rubocop/cops_security.html#security',
      'style' => 'https://docs.rubocop.org/rubocop/cops_style.html#style',
      'naming' => 'https://docs.rubocop.org/rubocop/cops_naming.html#naming',
    }
    next if configuration.key?(pending_cop.name)

    department, anchor = pending_cop.name.downcase.split('/')
    puts <<~COMMENT
      [**#{pending_cop.name}**](#{base_urls.fetch(department)}#{anchor})
      #{pending_cop.metadata.fetch('Description')}

    COMMENT
  end
end

desc 'Print out comments that can be used for a GitHub cop election'
task "election:config" do
  configuration_path = File.expand_path('default.yml', File.dirname(__FILE__))
  configuration = RuboCop::ConfigLoader.load_file(configuration_path)
  pending_cops = RuboCop::ConfigLoader.default_configuration.pending_cops.reject { |cop|
    configuration.key?(cop.name)
  }
  ascending_by_version = pending_cops.group_by { |cop|
    cop.metadata.fetch('VersionAdded')
  }.sort_by(&:first)
  ascending_by_version.each do |(version, cops)|
    puts "# #{version}"
    cops.each do |cop|
      puts <<~CONFIGURATION
        #{cop.name}:
          Enabled: True

      CONFIGURATION
    end
  end
end
