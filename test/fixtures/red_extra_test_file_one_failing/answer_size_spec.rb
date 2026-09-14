require_relative 'hiker'

describe 'answer size' do

  it 'is three digits long' do
    expect(answer.to_s.size).to eq(3)
  end

end
