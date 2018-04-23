def create_hash(sentence)
  sentence.split.each_with_object({}) do |word, hash|
    hash[word] = word.length
  end
end

def count_words
  raw_text = %(The problem breaks down into two parts. First, given some text
  as a string, return a list of words. That sounds like an array. Then, build
  a count for each distinct word. That sounds like a use for a hash we can
  index it with the word and use the corresponding entry to keep a count.)

  words_array = raw_text.split
  word_occurences = words_array.each_with_object({}) do |word, hash|
    if hash.key? word
      hash[word] += 1
    else
      hash[word] = 1
    end
  end
  word_occurences.sort_by{ |_key, value| value}.last(5).each do |key, value|
    puts "\"#{key}\" occured #{value} times in the text"
  end

end

# p create_hash('I love programming')
count_words
