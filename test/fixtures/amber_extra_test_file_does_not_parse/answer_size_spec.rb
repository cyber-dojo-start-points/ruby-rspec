# The name ends in _spec.rb, so rspec loads this file, and the half written
# expectation below stops it loading. rspec reports that as an error outside
# of examples and quits.
require_relative 'hiker'

describe 'answer size' do

  it 'is two digits long' do
    expect(answer.to_s.size).to eq(2
  end

end
