
lambda { |stdout,stderr,status|
  output = stdout + stderr
  return :amber if /(\d+) example(s?), (\d+) failure(s?), (\d+) error(s?)/.match(output)
  # A run that examined nothing has nothing to be green about, and rspec says
  # "0 examples, 0 failures" for an empty describe and for a spec file nothing
  # collected. The \b keeps this off the 0 in "10 examples".
  return :amber if /\b0 examples?, /.match(output)
  return :green if /(\d+) example(s?), 0 failures/.match(output)
  return :red   if /(\d+) example(s?), (\d+) failure(s?)/.match(output)
  return :red   if /(\d+) scenario(s?) \((\d+) failed/.match(output)
  return :green if /(\d+) scenario(s?) \((\d+) passed/.match(output)
  return :amber
}
