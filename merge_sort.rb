arr = [6, 3, 1, 8, 2, 5, 4, 7]


def divide_array (arr)
  left_arr = []
  right_arr = []
  arr.map.with_index { |value, i| i <= (arr.length - 1) / 2 ? left_arr.push(value) : right_arr.push(value) }
  return [left_arr, right_arr]  
end  


def merge (arr1, arr2)
  result = []
  while !arr1.empty? > 0 && !arr2.empty? > 0 do
    arr1[0] < arr2[0] ? result.push(arr1.shift) : result.push(arr2.shift) 
  end  
   result + arr1 + arr2
end  


def sort (arr)

  if arr.length == 1 
    return arr
  end 

  divided_array = divide_array(arr)

  left_arr = sort(divided_array[0].slice(0, arr.length - 1))
  right_arr = sort(divided_array[1].slice(0, arr.length - 1))
  merge(left_arr, right_arr)
  
end 


sort(arr)
