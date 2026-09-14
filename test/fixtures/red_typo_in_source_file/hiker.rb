# puts is misspelt, so the example raises NoMethodError. rspec counts an
# exception in an example as a failure, so the run is red.
def answer
  putts 'the answer is 42'
  6 * 7
end
