def flat_array(sentence)
  array = []
  s = sentence.split.each do |element|
    array << { element => element.length }
  end
  array.flatten!

  array.reduce({}, :merge)
end

p flat_array('I love programming')
