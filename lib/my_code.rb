# Your Code Here

def map(arr)
  
  new_arr = []
  
  arr.each do |value|
    new_arr << yield(value)
  end 
  
  return new_arr 
end

def reduce(arr, start = 0)
  
  total = start 
   
  
  arr.each do |value|
     
      result = yield(value, total)
      if value.is_a?(Numeric)
        total = result 
      else 
        total = total && result 
      end 
     
      
  end 
  
  return total 
  
  
end 