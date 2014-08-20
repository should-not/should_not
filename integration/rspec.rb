require 'should_not/rspec'

describe RSpec do
  it 'should fail when the string starts with should' do
    expect(1).to eq(1)
  end

  it 'can pass a normal test' do
    expect(1).to eq(1)
  end

  it 'does not mind if "should" is in the middle of a string' do
    expect(1).to eq(1)
  end

  describe 'a nested context' do
    it 'should also fail when the string starts with should' do
      expect(1).to eq(1)
    end

    it 'can also pass a normal test' do
      expect(1).to eq(1)
    end
  end
end
