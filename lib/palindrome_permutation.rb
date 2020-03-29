def palindrome_permutation?(string)
  hash = {}

  string.length.times do |i|
    if hash[string[i]]
      hash[string[i]] += 1
    else
      hash[string[i]] = 1
    end
  end


  odd = 0
  hash.each do |k, v|
    if v % 2 != 0
      if v == 1
        return false if (odd += 1) > 1
      end
    end
  end

  return true
end