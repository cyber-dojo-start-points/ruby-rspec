# rspec collects the files whose name ends in _spec.rb, so this file is never
# loaded and the example below never runs. The expectation is one that would
# fail, so a green says the example really did not run, rather than that it
# ran and passed.
require_relative 'hiker'

describe 'misnamed hiker' do

  it 'is three digits long' do
    expect(answer.to_s.size).to eq(3)
  end

end
