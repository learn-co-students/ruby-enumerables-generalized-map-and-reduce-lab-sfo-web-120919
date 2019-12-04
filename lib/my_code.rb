
def map(array)
  result = []
  i = 0 
  
  while i < array.length 
  result << yield(array[i])
  i+=1 
end
result
end

def reduce(array, start_point = nil)
  if start_point
    total = start_point
    i = 0 
  else
    total = array[0]
    i = 1
  end
  
  while i < array.length 
  total = yield(total, array[i])
  i+= 1 
end
total
end