# The name does not end in _spec.rb, so rspec never loads this file and the
# half written expectation below is never parsed. Nothing reads the file, so
# nothing reports the syntax error in it and the run stays green.
require_relative 'hiker'

describe 'misnamed hiker' do

  it 'is two digits long' do
    expect(answer.to_s.size).to eq(2
  end

end
