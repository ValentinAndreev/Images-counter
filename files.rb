def counter(directory)
  Dir.chdir(directory)
  files = []
  hs = []
  Dir.glob("*/**/*.*") { |f| files << f.split('/')[-1] if /\.(png|jpg|jpeg|gif)$/.match(f) } 
  Dir.glob("*.*") { |f| files << f.split('/')[-1] if /\.(png|jpg|jpeg|gif)$/.match(f) }
  y = files.uniq.map{ |i| [i, files.count(i)] }
  y.each {|a| hs << {filename: a[0], count: a[1]} }
  puts hs.inspect
end
