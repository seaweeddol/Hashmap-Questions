def intersection(list1, list2)
  hash = {}
  array = []

  list1.each do |i|
    if hash[i/10]
      hash[i/10] << i
    else
      hash[i/10] = [i]
    end
  end

  list2.each do |i|
    if hash[i/10]
      hash[i/10].each do |x|
        if i == x
          array << i
          break
        end
      end
    end
  end

  return array
end