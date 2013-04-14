require 'spec_helper'
require 'should_not'
require 'should_not/rspec'

describe ShouldNot do
  it 'has a version number' do
    ShouldNot::VERSION.should_not be_nil
  end

  describe 'constants' do
    describe 'STARTS_WITH_SHOULD' do
      subject { ShouldNot::STARTS_WITH_SHOULD }

      it 'matches the whole word "should" at the beginning of the string' do
        'should foo bar'.should match(subject)
      end

      it 'matches when "should" is capitalized' do
        'Should foo bar'.should match(subject)
      end

      it 'does not match the word "should" in the middle of a string' do
        'foo should bar'.should_not match(subject)
      end

      it "matches shouldn't at the beggining" do
        "shouldn't foo bar".should match(subject)
      end

      it "does not match shouldn't in the middle" do
        "foo shouldn't bar".should_not match(subject)
      end

      it 'does not other words starting with should' do
        'shoulders are nice to have'.should_not match(subject)
        'shoulda is a helpful library for testing Rails'.should_not match(subject)
      end
    end
  end
end
