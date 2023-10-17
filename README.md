# ws-style
[![Default](https://github.com/wealthsimple/ws-style/actions/workflows/default.yml/badge.svg)](https://github.com/wealthsimple/ws-style/actions/workflows/default.yml)

Shared [rubocop](https://github.com/bbatsov/rubocop) config to enforce Ruby style consistently across Wealthsimple libraries and services.

## Installation

Add this line to your application's Gemfile and execute `bundle`:

```ruby
group :development, :test do
  gem 'ws-style', require: false
end
```

Or, for a rubygem, add this to your `gemspec`:

```ruby
spec.add_development_dependency 'ws-style'
```

## Usage

Create a `.rubocop.yml` with the following directives:

```yaml
inherit_gem:
  ws-style:
    - default.yml

# Add the following for rails projects with custom inflections
# This adds supports for filenames based on inflection rules
require:
  - ws/style/inflector
  - active_support/inflector
  - ./config/initializers/inflections
```

Check if it works by running `bundle exec rubocop`.

You can optionally override or specify additional style configurations in your `.rubocop.yml`, e.g.:

```yaml
inherit_gem:
  ws-style:
    - default.yml

AllCops:
  TargetRubyVersion: 3.2
  Include:
    - 'db/**/*'

Lint/RescueException:
  Enabled: false

Style/HashSyntax:
  EnforcedStyle: hash_rockets
```

If you're using `ws-style` in a non-Rails project, inherit from the core configuration file instead:

```yaml
inherit_gem:
  ws-style:
    - core.yml
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

New versions are automatically released by CI when merged to `main`.
