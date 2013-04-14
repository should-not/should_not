# should_not

[![Build Status](https://travis-ci.org/mark-rushakoff/should_not.png?branch=master)](https://travis-ci.org/mark-rushakoff/should_not)
[![Code Climate](https://codeclimate.com/github/mark-rushakoff/should_not.png)](https://codeclimate.com/github/mark-rushakoff/should_not)
[![Gem Version](https://badge.fury.io/rb/should_not.png)](http://badge.fury.io/rb/should_not)

You `should_not` start your specs with the string `"should"`:
if every spec begins with `"should"`, then `"should"` is redundant everywhere and becomes noise.
Use this gem to enforce that rule.

## Installation

Add this line to your application's Gemfile:

    gem 'should_not'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install should_not

## Usage

### RSpec

In `spec_helper.rb`, add the line:

    require 'should_not/rspec'

and then specs will fail if the `it` description starts with `should`.

### MiniTest

Make sure that somewhere you have

    require 'should_not/minitest'

and then specs (`describe`/`it` syntax only) will fail if the `it` description starts with `should`.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

Available under the terms of the MIT license.
See [LICENSE.MIT](LICENSE.MIT) for more details.
