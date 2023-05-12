# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

## 6.14.8 - 2023-05-12
### Changed
- Add Send style warning, since its dangerous

## 6.14.7 - 2023-05-10
### Changed
- Address rubocop warnings

## 6.14.6 - 2023-04-28
### Changed
- Removed support for Ruby 2 since it is EOL

## 6.14.5 - 2023-02-23
### Changed
- Remove use of toolbox-script in Github workflows

## 6.14.4 - 2023-01-31
### Changed
- Upgraded to ruby 3

## 6.14.3 - 2023-01-03
### Changed
- Updated dependencies

## 6.14.2 - 2022-11-08
### Changed
- Updated rspec

## 6.14.1 - 2022-09-14
### Changed
- NewCops rule can only be defined once.

## 6.14.0 - 2022-09-06
### Changed
- Support new rules introduced between rubocop 1.26 -> 1.36

## 6.13.25 - 2022-07-13
### Changed
- Disable AllowForAlignment under Layout/ExtraSpacing.

## 6.13.24 - 2022-06-27
### Changed
- Replaced Gemspec/DateAssignment with Gemspec/DeprecatedAttributesAssignment

## 6.13.23 - 2022-05-16
### Changed
- Updated dependencies
- Stop requiring version / changelog entries for dependency updates

## 6.13.22 - 2022-05-09
### Changed
- Updated dependencies

## 6.13.21 - 2022-05-04
### Changed
- Updated obsolete parameter as per rubocop/rubocop#10555

## 6.13.20 - 2022-05-02
### Changed
- Updated dependencies

## 6.13.19 - 2022-04-25
### Changed
- Updated dependencies

## 6.13.18 - 2022-04-19
### Changed
- Updated dependencies

## 6.13.17 - 2022-04-11
### Changed
- Updated dependencies

## 6.13.16 - 2022-04-04
### Changed
- Updated dependencies

## 6.13.15 - 2022-04-01
### Changed
- Updated dependencies

## 6.13.14 - 2022-03-28
### Changed
- Updated dependencies

## 6.13.13 - 2022-03-21
### Changed
- Updated dependencies

## 6.13.12 - 2022-03-15
### Changed
- Updated dependencies

## 6.13.11 - 2022-03-08
### Changed
- Updated dependencies

## 6.13.10 - 2022-02-22
### Changed
- Updated dependencies

## 6.13.9 - 2022-02-14
### Changed
- Updated dependencies

## 6.13.8 - 2022-02-10
### Changed
- Updated rspec dependencies

## 6.13.7 - 2022-02-07
### Changed
- Updated dependencies

## 6.13.6 - 2022-01-31
### Changed
- Updated dependencies

## 6.13.5 - 2022-01-24
### Changed
- Updated dependencies
- Bumped Ruby to 2.7.5

## 6.13.4 - 2022-01-17
### Changed
- Updated dependencies

## 6.13.3 - 2022-01-10
### Changed
- Disable Rails/RedundantPresenceValidationOnBelongsTo as it can generate unsafe autocorrections

## 6.13.2 - 2022-01-10
### Changed
- Update rubocop-rails to 2.13.1

## 6.13.1 - 2022-01-07
### Changed
- Disable ruby 3.1 Hash shorthand syntax

## 6.13.0 - 2022-01-04
### Changed
- Updated rubocop to 1.24.1 and opted into new cops

## 6.12.4 - 2022-01-04
### Changed
- Updated dependencies

## 6.12.3 - 2021-12-20
### Changed
- Updated dependencies

## 6.12.2 - 2021-12-16
### Changed
- Upgraded rubocop to 1.23

## 6.12.1 - 2021-12-09
### Changed
- Disable new Gemspec/RequireMFA cop

## 6.12.0 - 2021-12-06
### Changed
- Update `rubocop-vendor`, which disallows `recursive-open-struct`

## 6.11.3 - 2021-11-19
### Changed
- Layout/ArgumentAlignment uses with_fixed_indentation

## 6.11.2 - 2021-11-19
### Changed
- Add concurrenty to GitHub Actions workflow

## 6.11.1 - 2021-11-08
### Changed
- Upgrade dependencies

## 6.11.0 - 2021-10-21
### Changed
- Upgrade rubocop to 1.22.3
- Upgrade rubocop-performance to 1.12.0
- Upgrade rubocop-rails to 2.12.4

## 6.10.1 - 2021-10-21
### Changed
- Removed rules that conflict with auto-correcting line-length
- Enable `Layout/ArgumentAlignment`
- For `Layout/HashAlignment`, change `EnforcedLastArgumentHashStyle` to `always_inspect`

## 6.10.0 - 2021-10-13
### Changed
- Upgrade rubocop to 1.22.1
- Upgrade rubocop-rspec to 2.5.0
- Upgrade rubocop-rails to 2.12.3

## 6.9.8 - 2021-09-15
### Changed
- Updated dependencies

## 6.9.7 - 2021-09-07
### Changed
- Updated dependencies

## 6.9.6 - 2021-08-23
### Changed
- Upgraded rubocop to 1.19.1

## 6.9.5 - 2021-07-28
### Changed
- Upgraded rubocop to 1.18.4

## 6.9.4 - 2021-07-20
### Changed
- Upgraded dependencies

## 6.9.3 - 2021-07-20
### Changed
- Upgraded rubocop to 1.18.2
- Upgraded rubocop-rais to 2.11.2

## 6.9.2 - 2021-06-28
### Changed
- Update dependencies

## 6.9.1 - 2021-05-06
### Changed
- Migrate CI from CircleCI to GitHub Actions
- Change default GitHub branch to `main`

## 6.9.0 - 2021-04-06
### Changed
- Upgraded rubocop to 1.12.1
- Upgraded rubocop-performance to 1.10.2
- Upgraded rubocop-vendor to 0.6.0

## 6.8.9 - 2021-04-02
### Changed
- Set minimum required ruby version to 2.7.2

## 6.7.2 - 2021-03-15
### Changed
- Increase Metrics/MethodLength to 25 (1/6 of class length).

## 6.7.1 - 2021-03-09
### Changed
- Disable Lint/EmptyBlock

## 6.7.0 - 2021-03-05
### Changed
- Upgraded rubocop to 1.11.0
- Upgraded rubocop-performance to 1.10.1
- Upgraded rubocop-rails to 2.9.1
- Upgraded rubocop-rspec to 2.2.0
- Upgraded rubocop-vendor to 0.5.0

## 6.6.3 - 2021-03-01
### Changed
- One more version bump to get it published

## 6.6.2 - 2021-03-01
### Changed
- Use GitHub Actions to publish gem

## 6.6.1 - 2021-03-01
### Changed
- Mostly just trying to get the version number bumped

## 6.6.0 - 2021-01-16
### Changed
- Rubocop FilePath should respect ActiveSupport::Inflector config if included

## 6.5.3 - 2020-12-17
### Changed
- Disable extension suggestions

## 6.5.2 - 2020-12-17
### Changed
- Add backstage catalog file + sonarqube project settings

## 6.5.1 - 2020-11-30
### Changed
- Disable EmptyLineBetweenClassDefs added in rubocop 1.4

## 6.5.0 - 2020-10-26
### Changed
- Upgrade RuboCop and RuboCop RSpec

## 6.4.0 - 2020-10-07
### Changed
- Upgrade RuboCop

## 6.3.0 - 2020-10-06
### Changed
- Upgrade RuboCop and enable cops that were voted in

## 6.2.0 - 2020-09-04
### Changed
- Disable Cops enabled in 6.1.0 until we can confirm we want them

## 6.1.1 - 2020-09-04
### Changed
- Disable RSpec/MultipleMemoizedHelpers cop

## 6.1.0 - 2020-08-27
### Changed
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
