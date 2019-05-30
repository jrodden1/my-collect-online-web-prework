def my_collect(words)
  if block_given?
    i = 0
    new_collection = []
    while i < words.length
      new_collection << yield words[i]
      
      i = i + 1
    end
  end
  new_collection
end
