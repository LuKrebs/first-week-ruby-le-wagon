def wagon_sort(array)
  downcased_array = (array.map { |name| name.downcase }).sort
  array.each_with_index do |item, i|
    index_number = downcased_array.index(item.downcase) if downcased_array.include?(item.downcase)
    downcased_array[index_number] = item
  end
  downcased_array
end

# array.sort_by { |x| x.downcase}
