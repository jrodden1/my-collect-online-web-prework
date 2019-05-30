require 'pry'
def my_collect(words)
  if block_given?
    i = 0
    new_collection = []
    while i < words.length
      yield words[i]
      new_collection << yield
      i = i + 1
    end
  end
  new_collection
end
