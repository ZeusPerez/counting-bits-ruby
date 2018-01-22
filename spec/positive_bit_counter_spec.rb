require_relative '../lib/positive_bit_counter'

describe PositiveBitCounter do

  it 'Should return a RangeError when a negative value is supplied' do
    expect { PositiveBitCounter.new.count(-2) }.to raise_error(RangeError)
  end

  it 'Should return zero occurrences for input = 0' do
    expected = [0]
    actual = PositiveBitCounter.new.count(0)
    expect(actual).to eql(expected)
  end

  it 'Should return the expected count for input = 1' do
    expected = [1, 0]
    actual = PositiveBitCounter.new.count(1)
    expect(actual).to eql(expected)
  end

  it 'Should return the expected count for input = 161' do
    expected = [3, 0, 5, 7]
    actual = PositiveBitCounter.new.count(161)
    expect(actual).to eql(expected)
  end
end
