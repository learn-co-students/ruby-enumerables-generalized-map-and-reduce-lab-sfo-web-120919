require 'pry'# Your Code Here
def map(array)
  empty = []
  array.each do |item|
    empty << yield(item)
  end
  return empty
end

def reduce(array, starting_point=nil)

  if starting_point
    total = starting_point
    index = 0
  else
    total = array[0]
    index = 1
  end
  while index < array.length
    total = yield(total,array[index])
    index += 1
  end
return total
end
