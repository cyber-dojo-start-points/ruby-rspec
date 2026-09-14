# The name is misspelt, so the example raises NameError. rspec counts an
# exception in an example as a failure, so the run is red.
require_relative 'hiker'

describe 'hiker' do

  it 'is the answer to life the universe and everything' do
    expect(ansewr).to eq(42)
  end

end
