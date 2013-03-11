File.open(ARGV[0]) do |f|
  contents = f.read
  print contents
end
