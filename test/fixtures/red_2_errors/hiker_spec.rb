require_relative 'hiker'

describe 'hiker' do

  it 'is the answer to life the universe and everything' do
    expect(answer).to eq(42)
  end

  it 'is two digits long' do
    expect(answer.to_s.size).to eq(2)
  end

end
