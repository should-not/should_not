require 'rspec/core'
require 'should_not/constants'

RSpec.configure do |config|
  # context.example is deprecated, but RSpec.current_example is not
  # available until RSpec 3.0.
  fetch_current_example = RSpec.respond_to?(:current_example) ?
    proc { RSpec.current_example } : proc { |context| context.example }

  config.before(:each) do
    example = fetch_current_example.call(self)

    # Not sure that last is correct here -- is the array ever larger than one element?
    description = example.metadata[:description_args].last.to_s
    fail(ShouldNot::FAILURE_MESSAGE) if description.match(ShouldNot::STARTS_WITH_SHOULD)
  end
end
