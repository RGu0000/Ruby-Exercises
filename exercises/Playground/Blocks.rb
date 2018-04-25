def two_times
  yield
  yield
end
two_times { puts "Hello" }


p enum_in_threes = (1..10).enum_for(:each_slice, 3)
p enum_in_threes.to_a

p 123456
p 0d123456
p 123_456
p -543
p 0xaabb
p 0377
p -0b10_1010
p 0b10_1010
p 123_456_789_123_456_789
