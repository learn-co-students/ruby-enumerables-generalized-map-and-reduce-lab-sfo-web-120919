# Your Code Here
def map (array)
  i = 0
  new = []
  while i < array.length
  new.push(yield(array[i]))
  i += 1
end
new
end

def reduce (array, sp = nil)
  if sp
    num = sp
    i = 0
else
  num = array[0]
  i = 1
  
end
while i < array.length 
  num = yield(num,array[i]) 
  i+=1
end
num
end