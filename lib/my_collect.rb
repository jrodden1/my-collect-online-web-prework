def my_collect(words)
  if block_given?
    i = 0
    new_collection = []
    while i < words.length
      new_var = yield words[i]
      new_collection << new_var
      i = i + 1
    end
  end
  new_collection
end
