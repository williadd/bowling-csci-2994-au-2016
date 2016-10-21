require 'frame'
require 'bowling'

describe 'bowling score calculator' do
  it 'knows what a strike is' do
    frame = Frame.new(10,0)
    strike = Bowling.new.strike?(frame)
    expect(strike).to be true
  end
  it 'knows what a strike is not' do
    frame = Frame.new(9, 0)
    strike = Bowling.new.strike?(frame)
    expect(strike).to be false
  end
  it 'knows what a spare is' do
    frame = Frame.new(4,6)
    spare = Bowling.new.spare?(frame)
    expect(spare).to be true
  end

  it 'knows what a spare is not' do
    frame = Frame.new(4,5)
    spare = Bowling.new.spare?(frame)
    expect(spare).to be false
  end
end



