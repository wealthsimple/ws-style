# Ws::Style

Shared [rubocop](https://github.com/bbatsov/rubocop) config to enforce Ruby style consistently across Wealthsimple libraries and services.

## Installation

Add this line to your application's Gemfile and execute `bundle`:

```ruby
gem 'ws-style'
```

Or, for a rubygem, add this to your `gemspec`:

```ruby
spec.add_development_dependency 'ws-style'
```

To update an existing installation, just run `bundle update ws-style`.

## Usage

Create a `.rubocop.yml` with the following directives:

```yaml
inherit_gem:
  ws-style:
    - default.yml
```

Check if it works by running `bundle exec rubocop`.

You can optionally override or specify additional style configurations in your `.rubocop.yml`.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).
