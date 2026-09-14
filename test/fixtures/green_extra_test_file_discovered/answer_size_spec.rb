require_relative 'hiker'

describe 'answer size' do

  it 'is two digits long' do
    expect(answer.to_s.size).to eq(2)
  end

end
