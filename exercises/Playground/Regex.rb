def show_regexp(string, pattern)
  match = pattern.match(string)
  if match
    "#{match.pre_match}->#{match[0]}<-#{match.post_match}"
  else
    'no match'
  end
end

p show_regexp('very interesting', /t/)
p show_regexp('John Doe', /ohn/)
p show_regexp('John Doe', /Zohn/)
p show_regexp('Price $1^2.', /[+^]/)
puts "\n"
md = /((\d\d):(\d\d))(..)/.match('12:50am')
p "Time is #{md[1]}"
p "Hour is #{md[2]}, minute #{md[3]}"
p "AM/PM is #{md[4]}"
puts "\n"
str = 'He said "Hello"'
p show_regexp(str, /(?<char>\w)\k<char>/)
puts "\n"
str = 'a\b\c'
p str.gsub(/\\/, '\\\\\\\\') #pickaxe p. 105
p str.gsub(/\\/, '\\\\')
