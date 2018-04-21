# A non-empty array A consisting of N integers is given.
#
# The leader of this array is the value that occurs in more than half of the elements of A.
#
# An equi leader is an index S such that 0 ≤ S < N − 1 and two sequences A[0], A[1], ..., A[S] and A[S + 1], A[S + 2], ..., A[N − 1] have leaders of the same value.
#
# For example, given array A such that:
#
#     A[0] = 4
#     A[1] = 3
#     A[2] = 4
#     A[3] = 4
#     A[4] = 4
#     A[5] = 2
# we can find two equi leaders:
#
# 0, because sequences: (4) and (3, 4, 4, 4, 2) have the same leader, whose value is 4.
# 2, because sequences: (4, 3, 4) and (4, 4, 2) have the same leader, whose value is 4.
# The goal is to count the number of equi leaders.
#
# Write a function:
#
# def solution(a)
#
# that, given a non-empty array A consisting of N integers, returns the number of equi leaders.
#
# For example, given:
#
#     A[0] = 4
#     A[1] = 3
#     A[2] = 4
#     A[3] = 4
#     A[4] = 4
#     A[5] = 2
# the function should return 2, as explained above.
#
# Assume that:
#
# N is an integer within the range [1..100,000];
# each element of array A is an integer within the range [−1,000,000,000..1,000,000,000].
# Complexity:
#
# expected worst-case time complexity is O(N);
# expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).

def solution(a)
  size = 0
  leader_candidate = nil
  a.each_index do |i|
    if size.zero?
      leader_candidate = a[i]
      size += 1
    else
      size -= 1 if leader_candidate != a[i]
      size += 1 if leader_candidate == a[i]
    end
  end
  leader_count = a.select { |v| v == leader_candidate }.size
  equi_leaders = 0

  left_leaders = 0
  a.each_index do |i|
    if a[i] == leader_candidate
      leader_count -= 1
      left_leaders += 1
    end
    if (left_leaders > (i + 1) / 2) && (leader_count > (a.size - i - 1) / 2)
      equi_leaders += 1
    end
  end
  equi_leaders
end
