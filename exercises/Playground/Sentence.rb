class Sentence
  attr_accessor :sentence

  def initialize(sentence = '...')
    @sentence = sentence.upcase
  end

  def times_occured(word)
    result = 0
    @sentence.split.each do |element|
      result += 1 if element.include? word.upcase
    end
    result
  end
end

sentence = Sentence.new('ruby, ruby RUBY RYBY loove lOVE _love pytHOn_')
puts sentence.times_occured('ruby') == 3
puts sentence.times_occured('Ruby') == 3
puts sentence.times_occured('RubY') == 3
puts sentence.times_occured('loVe') == 2
puts sentence.times_occured('loVE') == 2
puts sentence.times_occured('python') == 1
puts sentence.times_occured('nothing') == 0
