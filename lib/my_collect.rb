require 'pry'
def my_collect(words)
  if block_given?
    i = 0
    new_collection = []
    while i < words.length
      yield words[i]
      binding.pry
      new_collection << yield
      binding.pry
      i = i + 1
    end
  end
  new_collection
end
