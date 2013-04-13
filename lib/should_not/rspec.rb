require 'rspec/core'

RSpec.configure do |config|
  STARTS_WITH_SHOULD = /\Ashould\s/.freeze
  config.before(:each) do
    next if example.metadata[:should] == true
    # Not sure that last is correct here -- is the array ever larger than one element?
    description = example.metadata[:description_args].last.to_s
    fail("You should_not start an example with should!") if description.match(STARTS_WITH_SHOULD)
  end
end
