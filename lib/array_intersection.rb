def intersection(list1, list2)
  new_array = []

  list1.each do |num|
    list2.each do |num2|
      if num == num2
        new_array << num
        break
      end
    end
  end

  return new_array
end