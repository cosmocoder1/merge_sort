def split (arr)
  left_array = []
  right_array = []
  arr.map.with_index { |value, i| i <= (arr.length - 1) / 2 ? 
  left_array.push(value) : right_array.push(value) }
  return [left_array, right_array]
end  


def merge (arr1, arr2)
  result = []
  while !arr1.empty? && !arr2.empty? do
  arr1[0] < arr2[0] ? result.push(arr1.shift) : result.push(arr2.shift)
  end
  result + arr1 + arr2
end  

def sort (arr)
  if arr.length == 1
    return arr
  end
  divided_arr = split(arr)
  left_channel = sort(divided_arr[0])
  right_channel = sort(divided_arr[1])
  merge(left_channel, right_channel)
end

arr = [4, 5, 2, 3, 7, 9, 1, 8, 6]
puts sort(arr)

