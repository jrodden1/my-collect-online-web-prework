def my_collect(words)
  if block_given?
    i = 0
    new_collection = []
    while i < words.length
      yielded_value = yield words[i]
      new_collection << yielded_value
      i = i + 1
    end
  end
  new_collection
end
