require_relative 'hiker'

describe 'hiker' do

  it 'is the answer to life the universe and everything' do
    expect(answer).to eq(42)
  end

  it 'is not the question' do
    expect(answer).not_to eq('6 * 7')
  end

end
