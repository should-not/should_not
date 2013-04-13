require 'should_not/rspec'

describe RSpec do
  it 'should fail when the string starts with should' do
    1.should == 1
  end

  it 'can pass a normal test' do
    1.should == 1
  end

  it 'should allow should on an "it" through metadata', :should => true do
    1.should == 1
  end

  describe 'a nested context' do
    it 'should also fail when the string starts with should' do
      1.should == 1
    end

    it 'can also pass a normal test' do
      1.should == 1
    end

    it 'should also allow should on an "it" through metadata', :should => true do
      1.should == 1
    end
  end

  describe 'another nested context', :should => true do
    it 'can pass yet another normal test' do
      1.should == 1
    end

    it 'should not care if a spec starts with should' do
      1.should == 1
    end
  end
end
