# AR::Timestamptz

[![Travis-CI](https://travis-ci.org/fnando/ar-timestamptz.svg)](https://travis-ci.org/fnando/ar-timestamptz)
[![Code Climate](https://codeclimate.com/github/fnando/ar-timestamptz/badges/gpa.svg)](https://codeclimate.com/github/fnando/ar-timestamptz)
[![Test Coverage](https://codeclimate.com/github/fnando/ar-timestamptz/badges/coverage.svg)](https://codeclimate.com/github/fnando/ar-timestamptz/coverage)
[![Gem](https://img.shields.io/gem/v/ar-timestamptz.svg)](https://rubygems.org/gems/ar-timestamptz)
[![Gem](https://img.shields.io/gem/dt/ar-timestamptz.svg)](https://rubygems.org/gems/ar-timestamptz)

Make ActiveRecord's PostgreSQL adapter use timestamptz as datetime columns.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "ar-timestamptz"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ar-timestamptz

## Usage

That's it! You don't have to configure anything.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake test` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push
git commits and tags, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/fnando/ar-timestamptz. This project is intended to be a safe,
welcoming space for collaboration, and contributors are expected to adhere to
the [Contributor Covenant](contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the
[MIT License](http://opensource.org/licenses/MIT).
