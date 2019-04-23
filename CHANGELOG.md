# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

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
