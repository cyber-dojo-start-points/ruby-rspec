require_relative 'hiker'

describe 'hiker' do

  it 'is the answer to life the universe and everything' do
    expect(answer).to eq(42)
  end

  it 'is three digits long' do
    expect(answer.to_s.size).to eq(3)
  end

  it 'is the question' do
    expect(answer).to eq('6 * 7')
  end

end
