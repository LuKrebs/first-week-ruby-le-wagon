def shuffle(array)
  new_array = []
  array.each_with_index do |_item, i|
    while !new_array.include?(array[i]) && new_array.size < array.size
      x = rand(array.length)
      new_array.push(array[x]) unless new_array.include?(array[x])
    end
  end
  new_array
end

# array.sort_by { rand }
