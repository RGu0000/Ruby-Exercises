# while (line = gets)
#   puts line
# end

# require 'stringio'
# ip = StringIO.new("now is\nthe time\nto learn\nRuby!")
# op = StringIO.new("", "w")
# ip.each_line do |line|
#   op.puts line.reverse
# end
# puts ip.string
# puts op.string
require 'benchmark'
require 'benchmark/ips'
Benchmark.ips do |x|
  x.report('times.map') { 5.times.map{} }
  x.report('Array.new') { Array.new(5){} }
  x.compare!
end
