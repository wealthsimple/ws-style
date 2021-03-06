# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## 6.9.2 - 2021-06-28
- Update dependencies

## 6.9.1 - 2021-05-06
- Migrate CI from CircleCI to GitHub Actions
- Change default GitHub branch to `main`

## 6.9.0 - 2021-04-06
- Upgraded rubocop to 1.12.1
- Upgraded rubocop-performance to 1.10.2
- Upgraded rubocop-vendor to 0.6.0

## 6.8.9 - 2021-04-02
- Set minimum required ruby version to 2.7.2

## 6.7.2 - 2021-03-15
- Increase Metrics/MethodLength to 25 (1/6 of class length).

## 6.7.1 - 2021-03-09
- Disable Lint/EmptyBlock

## 6.7.0 - 2021-03-05
- Upgraded rubocop to 1.11.0
- Upgraded rubocop-performance to 1.10.1
- Upgraded rubocop-rails to 2.9.1
- Upgraded rubocop-rspec to 2.2.0
- Upgraded rubocop-vendor to 0.5.0

## 6.6.3 - 2021-03-01
- One more version bump to get it published

## 6.6.2 - 2021-03-01
- Use GitHub Actions to publish gem

## 6.6.1 - 2021-03-01
- Mostly just trying to get the version number bumped

## 6.6.0 - 2021-01-16
- Rubocop FilePath should respect ActiveSupport::Inflector config if included

## 6.5.3 - 2020-12-17
- Disable extension suggestions

## 6.5.2 - 2020-12-17
- Add backstage catalog file + sonarqube project settings

## 6.5.1 - 2020-11-30
- Disable EmptyLineBetweenClassDefs added in rubocop 1.4

## 6.5.0 - 2020-10-26
- Upgrade RuboCop and RuboCop RSpec

## 6.4.0 - 2020-10-07
- Upgrade RuboCop

## 6.3.0 - 2020-10-06
- Upgrade RuboCop and enable cops that were voted in

## 6.2.0 - 2020-09-04
- Disable Cops enabled in 6.1.0 until we can confirm we want them

## 6.1.1 - 2020-09-04
- Disable RSpec/MultipleMemoizedHelpers cop

## 6.1.0 - 2020-08-27
- Upgraded rubocop to 0.89
- Upgraded rubocop-performance to 1.7
- Upgraded rubocop-rails to 2.7
- Split out Rails cops into their own configuration to improve installation for non-Rails projects

## 6.0.4 - 2020-07-06
### Changed
- Upgraded rubocop to >= 0.86 and opted into the new cops.

## 6.0.1 - 2020-05-06
### Changed
- Don't enforce Style/FormatStringToken. We use template style strings heavily, and don't feel that annotated strings are a necessary improvement.

## 6.0.0 - 2020-04-27
### Changed
- Upgraded rubocop to >= 0.82 and opted into the 7 new cops.
- Going forward we will need to explicitly opt into or out of every new cop.

## 5.1.0 - 2019-06-06
### Changed
- Added indentation cop, enforcing 2 space indentation.

  This allows Rubocop to automatically format code like this:

  ```ruby
  class Wizard
  def cast_spell
    # ...
  end
  end
  ```

  into this:

  ```ruby
  class Wizard
    def cast_spell
      # ...
    end
  end
  ```

## 5.0.0 - 2019-05-30
### Changed
- Enforce updating timestamps when changing Rails models.

## 4.1.0 - 2019-04-29
### Fixed
- Address errors from installing latest rubocop.

## 4.0.0 - 2019-04-23
### Added
- Added rubocop-vendor to enforce conventions on Rollbar usage.

## 3.1.1 - 2019-04-09
### Fixed
- Correctly require multiple dependencies.

## 3.0.5 - 2019-04-03
### Changed
- updated README

## 3.0.4 - 2019-03-06
### Changed
- Allow empty example group.

## 3.0.0 - 2019-02-26
### Changed
- Added rubocop-rspec to enforce good rspec hygiene. https://wealthsimple.quip.com/ywj9AznUePvo/HOWTO-ws-style-10-Rubocop-Upgrade-guide

## 2.0.0 - 2019-02-12
### Changed
- Use trailing dots for multiline chained method invocations. This prevents bugs when pasting Ruby snippets into REPLs.

## 0.4.7 - 2019-01-07
### Added
- Changelog file: human readable history.
- `data_schema.rb`, used by data-migrate gem is excluded by default.
