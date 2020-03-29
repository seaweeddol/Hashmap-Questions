# Time complexity: O(n)
# Space complexity: O(n)
def permutations?(string1, string2)
  return false if string1.length != string2.length

  hash = {}
  string1.length.times do |i|
    if hash[string1[i]]
      hash[string1[i]] += 1
    else
      hash[string1[i]] = 1
    end
  end

  string2.length.times do |i|
    if hash[string2[i]] && hash[string2[i]] > 0
      hash[string2[i]] -= 1
    else
      return false
    end
  end

  return true
end