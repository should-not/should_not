require 'rspec/core'
require 'should_not/constants'

RSpec.configure do |config|
  config.before(:each) do |example|
    # Not sure that last is correct here -- is the array ever larger than one element?
    description = example.metadata[:description_args].last.to_s
    fail(ShouldNot::FAILURE_MESSAGE) if description.match(ShouldNot::STARTS_WITH_SHOULD)
  end
end
