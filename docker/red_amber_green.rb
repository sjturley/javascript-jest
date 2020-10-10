
lambda { |stdout,stderr,status|
  output = stdout + stderr
  if /SyntaxError:/.match(output)
    :amber
  elsif /^FAIL/.match(output)
    :red
  elsif /^PASS/.match(output)
    :green
  else
    :amber
  end
}
