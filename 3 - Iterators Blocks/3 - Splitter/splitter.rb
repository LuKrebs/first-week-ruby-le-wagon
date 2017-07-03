def size_splitter(array, size)
  a = []
  b = []
  array.each { |word| word.length == size ? a.push(word) : b.push(word) }

  [a.sort, b.sort]
end

def block_splitter(array)
  a = []
  b = []
  array.each { |word| yield(word) ? a.push(word) : b.push(word) }

  [a, b]
end
