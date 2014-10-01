require 'minitest/spec'
require 'should_not/constants'

MiniTest::Spec.before do |spec|
  name = spec.name.to_s.gsub(ShouldNot::MINITEST_DESCRIPTION_PREFIX, '')
  flunk(ShouldNot::FAILURE_MESSAGE) if name.match(ShouldNot::STARTS_WITH_SHOULD)
end
