# Dividing by zero raises inside the example. rspec counts an exception in an
# example as a failure, so the summary says one failure and the run is red.
def answer
  42 / 0
end
