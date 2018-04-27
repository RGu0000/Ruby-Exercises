word_list = File.open("wordlist", 'r')
puts File.absolute_path("wordlist")
# word_list = ["test","test","test","test","test"]
catch (:done) do
  result = []
  while line = word_list.gets
    word = line.chomp
    throw :done unless word =~ /^\w+$/
    result << word
  end
  puts result.reverse
  puts "test"
end
puts "end"
# raise "bad mp3 encoding"
# raise InterfaceException, "Keyboard failure"
