require 'spec_helper'
require 'should_not'
require 'should_not/rspec'

describe ShouldNot do
  it 'has a version number' do
    ShouldNot::VERSION.should_not be_nil
  end
end
