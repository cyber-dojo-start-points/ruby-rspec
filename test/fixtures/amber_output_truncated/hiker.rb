# The learner put a print inside a loop to see what was happening. It writes
# far more to stdout than the 50K the runner keeps, and stdout is the stream
# rspec writes its summary to, so the summary line is dropped and no colour
# can be read from what is left.
5000.times { |i| puts "debug: answer was called, i is #{i}" }

def answer
  6 * 7
end
