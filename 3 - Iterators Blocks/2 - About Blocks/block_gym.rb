def tag(tag_name, attributes = nil)
  # TODO:  Build HTML tags around  content given in the block
  #        The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]
  if attributes.nil?
    return "<#{tag_name}>#{yield}</#{tag_name}>"
  else
    "<#{tag_name} #{attributes[0]}=\"#{attributes[1]}\">#{yield}</#{tag_name}>"
  end
end

def timer_for
  # TODO:  Return time taken to execute the given block
  start_time = Time.now
  yield
  return Time.now - start_time
end

def my_map(array)
  # TODO: Re-mplement the same behavior as `Enumerable#map` without using it! You can use `#each` though.
  new_array = []
  array.each { |i| new_array.push(yield(i)) }

  new_array
end
