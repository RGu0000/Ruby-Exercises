# word_list = File.open("wordlist", 'r')
# puts File.absolute_path("wordlist")
# # word_list = ["test","test","test","test","test"]
# catch (:done) do
#   result = []
#   while line = word_list.gets
#     word = line.chomp
#     throw :done unless word =~ /^\w+$/
#     result << word
#   end
#   puts result.reverse
#   puts "test"
# end
# puts "end"

# raise "bad mp3 encoding"
# raise InterfaceException, "Keyboard failure"

def prompt_and_get(prompt)
  print prompt
  res = readline.chomp
  throw :quit_requested if res == "!"
  res
end
catch :quit_requested do
  name = prompt_and_get("Name: ")
  age = prompt_and_get("Age: ")
  sex = prompt_and_get("Sex: ")
  # ..
  # process information
end
