# should_not

[![Build Status](https://travis-ci.org/should-not/should_not.png?branch=master)](https://travis-ci.org/should-not/should_not)
[![Code Climate](https://codeclimate.com/github/should-not/should_not.png)](https://codeclimate.com/github/should-not/should_not)
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

Please port this library to your language of choice!
Once it's ready, I'll be happy to add your port as a repo under the [`should-not` organization](https://github.com/should-not).

If you'd like to contribute to the Ruby version `should_not`, we could use support for more testing frameworks.
Just make sure that you have integration test coverage before you open a pull request.

## Related Projects

* The [should_clean gem](https://github.com/siyelo/should_clean) from @siyelo is a utility that changes `'it "should do something"'` to `'it "does something"'`
* [BetterSpecs](http://betterspecs.org/#should) currently recommends not beginning your specs with "should."
There is good discussion about this topic at their [GitHub issue](https://github.com/andreareginato/betterspecs/issues/15) about not starting with "should."

## License

Available under the terms of the MIT license.
See [LICENSE.MIT](LICENSE.MIT) for more details.
