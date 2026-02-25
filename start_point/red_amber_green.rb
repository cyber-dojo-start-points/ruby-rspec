
lambda { |stdout,stderr,status|
  output = stdout + stderr
  return :amber if /(\d+) example(s?), (\d+) failure(s?), (\d+) error(s?)/.match(output)
  return :green if /(\d+) example(s?), 0 failures/.match(output)
  return :red   if /(\d+) example(s?), (\d+) failure(s?)/.match(output)
  return :red   if /(\d+) scenario(s?) \((\d+) failed/.match(output)
  return :green if /(\d+) scenario(s?) \((\d+) passed/.match(output)
  return :amber
}
