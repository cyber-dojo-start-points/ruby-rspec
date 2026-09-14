# One example is wrong about the answer, the other raises. rspec counts both
# an exception in an example and a missed expectation as failures, so the
# summary says two failures and the run is red.
def answer
  6 * 9
end

def checksum
  42 / 0
end
