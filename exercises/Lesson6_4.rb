# We draw N discs on a plane. The discs are numbered from 0 to N − 1. An array A of N non-negative integers, specifying the radiuses of the discs, is given. The J-th disc is drawn with its center at (J, 0) and radius A[J].
#
# We say that the J-th disc and K-th disc intersect if J ≠ K and the J-th and K-th discs have at least one common point (assuming that the discs contain their borders).
#
# The figure below shows discs drawn for N = 6 and A as follows:
#
#   A[0] = 1
#   A[1] = 5
#   A[2] = 2
#   A[3] = 1
#   A[4] = 4
#   A[5] = 0
#
#
# There are eleven (unordered) pairs of discs that intersect, namely:
#
# discs 1 and 4 intersect, and both intersect with all the other discs;
# disc 2 also intersects with discs 0 and 3.
# Write a function:
#
# def solution(a)
#
# that, given an array A describing N discs as explained above, returns the number of (unordered) pairs of intersecting discs. The function should return −1 if the number of intersecting pairs exceeds 10,000,000.
#
# Given array A shown above, the function should return 11, as explained above.
#
# Assume that:
#
# N is an integer within the range [0..100,000];
# each element of array A is an integer within the range [0..2,147,483,647].
# Complexity:
#
# expected worst-case time complexity is O(N*log(N));
# expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).

def solution(a)
  result = 0

  opens_at = Array.new(a.size) { 0 }
  closes_at = Array.new(a.size) { 0 }
  a.size.times do |i|
    opens_at[ [0, i - a[i]].max ] += 1
    closes_at[ i + a[i] ] += 1 if i + a[i] < a.size
  end

  opened_not_closed = 0
  a.size.times do |i|
    if opens_at[i] > 0
      result += opened_not_closed * opens_at[i]
      result += opens_at[i] * (opens_at[i] - 1) / 2
      opened_not_closed += opens_at[i]
    end
    opened_not_closed -= closes_at[i]
  end

  return -1 if result > 10_000_000
  result

end
