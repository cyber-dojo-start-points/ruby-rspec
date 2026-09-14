# Dividing by zero raises inside both examples. rspec counts an exception in
# an example as a failure, so the summary says two failures and the run is
# red.
def answer
  42 / 0
end
