require 'should_not/minitest'
require 'minitest/autorun'

describe MiniTest do
  it 'should fail when the string starts with should' do
    1.must_equal 1
  end

  it 'can pass a normal test' do
    1.must_equal 1
  end

  it 'passes when "should" is in the middle of the description' do
    1.must_equal 1
  end

  describe 'a nested context' do
    it 'should also fail when the string starts with should' do
      1.must_equal 1
    end

    it 'can also pass a normal test' do
      1.must_equal 1
    end
  end

  describe 'another nested context with should in the string' do
    it 'can pass yet another normal test' do
      1.must_equal 1
    end
  end
end
