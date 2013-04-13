require 'spec_helper'
require 'should_not'

describe ShouldNot do
  it 'should have a version number' do
    ShouldNot::VERSION.should_not be_nil
  end
end
